 # encoding: utf-8
 class FamilyMembersController < ApplicationController
  before_filter :already_logged_in
  skip_before_filter :already_logged_in, :only => [:family, :create_family, :admin_family, :member_request_notifications, :add_family, :update_payment, :print_tree, :edit_relationship, :update_relation, :delete_member, :join_pending, :pending_decline, :accept, :decline, :flag_accept, :flag_decline]

  def index
    @family_members = FamilyMember.all
  end

  def show
    @family_member = FamilyMember.find(params[:id])
  end

  def new
    @family_member = FamilyMember.new
  end

  def edit
    @family_member = FamilyMember.find(params[:id])
  end

  def create
    @family_member = FamilyMember.new(params[:family_member])
    @family_member.save
    redirect_to @family_member, notice: 'Family member was successfully created.'
  end

  def update
    @family_member = FamilyMember.find(params[:id])
    @family_member.update_attributes(params[:family_member])
    redirect_to @family_member, notice: 'Family member was successfully updated.'
  end

  def destroy
    @family_member = FamilyMember.find(params[:id])
    @family_member.destroy
    redirect_to family_members_url
  end

  def family
    @user = User.find(params[:id])
    @all_relations = Relation.all(:order => 'serial')
    @family_members = FamilyMember.find_all_by_family_member_user_id_and_join_pending(@user.id,true)
    #@send_notification = Relative.find_all_by_existing_member_id_and_accept_request(@user.id,false)
   #@accept_notification = Relative.find_all_by_new_member_id_and_accept_request_and_flag(@user.id,true,false)
    @fm = FamilyMember.find_all_by_user_id_and_join_pending(@family_member_user_id, false)
    respond_to do |format|
      format.html
      format.xml { render :xml => @user }
      format.json { render :json => @user }
    format.pdf do
      render :pdf => "family"
    end
    end
  end

  def create_family
    @user = User.find(params[:id])
  end

  def add_family_backup
    unless params[:relation] == "0"
      @user = User.find_by_mj_id(params[:search_mjid])
      unless @user.nil? or @user.blank?
        @fm = FamilyMember.find_by_user_id_and_family_member_user_id(current_user.id, @user.id)
        if @fm.nil? or @fm.blank?
          @f = FamilyMember.new
          @f.family_member_user_id = @user.id
          @f.user_id = current_user.id
          @f.join_pending = false
          @f.relation_id = params[:relation]
          r = Relation.find(params[:relation])
          if (r.relationship == "पति") || (r.relationship == "पत्नी")
            @f.spouse_status = true
          end
          @f.save
          if (r.relationship == "पति") || (r.relationship == "पत्नी")
            @fm_reverse = FamilyMember.find_by_user_id_and_family_member_user_id(@user.id,current_user.id)
            if @fm_reverse.nil? or @fm_reverse.blank?     
              @f = FamilyMember.new
              @f.family_member_user_id = current_user.id
              @f.user_id =  @user.id
              @f.join_pending = false
              @f.spouse_status = true
              if r.relationship == "पति"   
                wife_relation = Relation.find_by_relationship("पत्नी")
                @f.relation_id = wife_relation.id
              elsif r.relationship == "पत्नी"
                husband_relation = Relation.find_by_relationship("पति")
                @f.relation_id = husband_relation.id
              end
              @f.save
            end
          end
          redirect_to "/family_members/family/#{current_user.id}", :notice => "#{@user.firstname} #{@user.lastname} added."
        else
          redirect_to "/family_members/family/#{current_user.id}", :notice => "#{@user.firstname} #{@user.lastname} already exists."
        end
      else
        redirect_to "/family_members/family/#{params[:id]}", :notice => "User does not exist."
      end
    else
      redirect_to "/family_members/family/#{params[:id]}", :notice => "Select a relation."
    end
  end

  
  def add_family
    @fm = FamilyMember.find(params[:id])
    @fm.update_attributes(:join_pending => false)
    r = Relation.find(@fm.relation_id)
    if (r.relationship == "पति") || (r.relationship == "पत्नी")
      @fm.spouse_status = true
      @fm.save
      @spouse = FamilyMember.find_by_user_id_and_family_member_user_id(@fm.family_member_user_id,@fm.user_id)
      @spouse.update_attributes(:join_pending => false)
      @spouse.spouse_status = true
      @spouse.save
    end
    @fm.save
    @em = FamilyMember.find_all_by_user_id(@fm.user_id)
    @relative = Relative.find_all_by_present_id(@fm.user_id)
    if !@relative.nil?
     @s = User.find(@fm.user_id).family_members 
       @s.each do |x|
        @r = Relative.new
        @r.present_id = x.user_id
        @r.new_member_id = current_user.id
        @r.existing_member_id = x.family_member_user_id
        @e_relationship = Relation.find(x.relation_id).relationship
        @mn = FamilyMember.find_by_user_id_and_family_member_user_id(x.user_id,current_user)
        @rid = @mn.relation_id
        @n_relationship = Relation.find(@rid).relationship
        @m = Mapping.where('first_person = ? and second_person = ?', @n_relationship, @e_relationship)
         @m.each do |y|
           @r.relationship = y.relationship
         end
        @mm = Mapping.where('first_person = ? and second_person = ?', @e_relationship, @n_relationship)
         @mm.each do |yy|
          @r.reverse_relationship = yy.relationship
         end
          unless @r.relationship.nil?
             unless @r.existing_member_id == @r.new_member_id
               unless @r.present_id == @r.existing_member_id
                 @r.save
               end
              end
          end
      end
      redirect_to "/family_members/family/#{current_user.id}"
    end 
  end

  def join_pending
    unless params[:relation] == "0"
      @user = User.find_by_mj_id(params[:search_mjid])
      unless @user.nil? or @user.blank?
        @fm = FamilyMember.find_by_user_id_and_family_member_user_id(current_user.id, @user.id)
        if @fm.nil? or @fm.blank?
          @f = FamilyMember.new
          @f.family_member_user_id = @user.id
          @f.user_id = current_user.id
          @f.family_member_user_dob = @user.dob
          @f.family_member_user_doby = @user.doby
          @f.relation_id = params[:relation]
          r = Relation.find(params[:relation])
          @f.save
           if (r.relationship == "पति") || (r.relationship == "पत्नी")
             if @fm.nil? or @fm.blank?     
               @f = FamilyMember.new
               @f.family_member_user_id = current_user.id
               @f.user_id =  @user.id
               @f.family_member_user_dob = current_user.dob
               @f.family_member_user_doby = current_user.doby
               if r.relationship == "पत्नी"   
                  husband_relation = Relation.find_by_relationship("पति")
                  @f.relation_id = husband_relation.id
                else
                  wife_relation = Relation.find_by_relationship("पत्नी")
                  @f.relation_id = wife_relation.id
               end
               @f.save
             end
           end
          redirect_to "/family_members/family/#{current_user.id}", :notice => "Request has been sent to #{@user.firstname} #{@user.lastname}."
         else
          redirect_to "/family_members/family/#{current_user.id}", :notice => "#{@user.firstname} #{@user.lastname} already exists."
         end
       else
        redirect_to "/family_members/family/#{params[:id]}", :notice => "User does not exist."
       end
      else
      redirect_to "/family_members/family/#{params[:id]}", :notice => "Select a relation."
     end
  end

  def pending_decline
     @fm = FamilyMember.find(params[:id])
     @fm.destroy
     redirect_to "/family_members/family/#{current_user.id}"
  end   

  def join_decline
    @j = FamilyMember.find_by_id(params[:id])
    @j.destroy
    redirect_to "/family_members/family/#{@j.family_member_user_id}"
  end

  def admin_family
    @user = User.find(params[:id])
    @due_members = FamilyMember.find_all_by_payment_status_and_join_pending_and_user_id(false, false,params[:id])
    @paid_members = FamilyMember.find_all_by_payment_status_and_join_pending_and_user_id(true, false,params[:id])
  end

  def deactivate
    @f = FamilyMember.find_by_id(params[:id])
    @f.update_attributes(:deactivate => true )
  end

  def print_tree
    @user = User.find(params[:id])
    @family_members = FamilyMember.find_all_by_family_member_user_id_and_join_pending(@user.id,true)
  end

  def delete_member
    @family_member = FamilyMember.find(params[:id])
    @family_member.destroy
    redirect_to "/family_members/family/#{current_user.id}", :notice => "Relationship deleted."
  end

  def accept
    @fg = Relative.find(params[:id])
    @fg.update_attributes(:accept_request => true)
    @fg.save
    @u = @fg.new_member_id
    @name = User.find(@u)
    redirect_to "/family_members/member_request_notifications/#{current_user.id}", :notice => "Request has been sent to #{@name.firstname}."
  end

  def decline
    @fg = Relative.find(params[:id])
    @fg.destroy
    redirect_to "/family_members/member_request_notifications/#{current_user.id}"
  end

  def flag_accept
    @fg = Relative.find(params[:id])
    @fg.update_attributes(:flag => true)
    @fg.save
    @r = Relation.find_by_relationship(@fg.relationship)
    @name = User.find(@fg.existing_member_id)
    @r_reverse = Relation.find_by_relationship(@fg.reverse_relationship)
    @family = FamilyMember.find_by_user_id_and_family_member_user_id(@fg.existing_member_id,@fg.new_member_id)
    @family_member_row_exist = FamilyMember.find_by_user_id_and_family_member_user_id_and_join_pending(@fg.existing_member_id,@fg.new_member_id,true)
       if @family.nil? or @family.blank?
          @fm = FamilyMember.new
          @fm.user_id = @fg.existing_member_id
          @fm.family_member_user_id = @fg.new_member_id
          @fm.join_pending = false
          @fm.relation_id = @r.id
          if (@fg.relationship == "पति") || (@fg.relationship == "पत्नी")
             @fm.spouse_status = true
          end
          @fm_dob = User.find(@fg.existing_member_id).dob
          @fm_doby = User.find(@fg.existing_member_id).doby
          @fm.family_member_user_dob = @fm_dob
          @fm.family_member_user_doby = @fm_doby
          @fm.save
       else 
        @family_member_row_exist.update_attributes(:join_pending => false)
          if (@fg.relationship == "पति") || (@fg.relationship == "पत्नी")
             @family_member_row_exist.update_attributes(:spouse_status => true)
          end
       end  
        unless @fg.reverse_relationship.nil?
          @family_member_exist = FamilyMember.find_by_user_id_and_family_member_user_id(@fg.new_member_id,@fg.existing_member_id)
          @fm_row_exist = FamilyMember.find_by_user_id_and_family_member_user_id_and_join_pending(@fg.new_member_id,@fg.existing_member_id,true)        
          if @family_member_exist.nil? or @family_member_exist.blank?
             @f = FamilyMember.new
             @f.user_id = @fg.new_member_id
             @f.family_member_user_id = @fg.existing_member_id
             @f.join_pending = false
             @f.relation_id = @r_reverse.id
              if (@fg.reverse_relationship == "पति") || (@fg.reverse_relationship == "पत्नी")
                @f.spouse_status = true
              end
             @f_dob = User.find(@fg.new_member_id).dob
             @f_doby = User.find(@fg.new_member_id).doby
             @f.family_member_user_dob = @f_dob
             @f.family_member_user_doby = @f_doby
             @f.save
          else 
             @fm_row_exist.update_attributes(:join_pending => false)
               if (@fg.reverse_relationship == "पति") || (@fg.reverse_relationship == "पत्नी")
                 @fm_row_exist.update_attributes(:spouse_status => true)
               end
          end   
        end
      redirect_to "/family_members/member_request_notifications/#{current_user.id}", :notice => "#{@name.firstname} is added."
  end
  
  def flag_decline
    @fg = Relative.find(params[:id])
    @fg.destroy
    redirect_to "/family_members/member_request_notifications/#{current_user.id}"
  end
  
  def member_request_notifications
    @user = User.find(params[:id])
    @family_members = FamilyMember.find_all_by_family_member_user_id_and_join_pending(params[:id],true)
    @send_notification = Relative.find_all_by_existing_member_id_and_accept_request(@user.id,false)
    @accept_notification = Relative.find_all_by_new_member_id_and_accept_request_and_flag(@user.id,true,false)
  end

 end

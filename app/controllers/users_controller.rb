class UsersController < ApplicationController
  skip_before_filter :login_required, :only => [:home, :new, :sign_up, :create, :registration_ack, :create_password, :store_password, :reset_password, :update_password, :demo_family, :search]
  before_filter :already_logged_in
  skip_before_filter :already_logged_in, :only => [:search, :index, :edit_profile]
 
  # validate :user_email
  helper_method :sort_column, :sort_direction

  
  def index
    @users = User.all  
    @products = User.search(params[:search]).order(sort_column + " " + sort_direction).page(params[:page]).per(10)


     
 # @users = User.all(:conditions => ['id > ?',params[:begin]], :limit => 30)
 #    @begin = @users.last.id
 
  end

  def sign_up

  end

 
  def new
        @user = User.new 
 
        @user.desig = params[:user][:desig]
      @user.firstname = params[:user][:firstname].capitalize
        @user.middlename = params[:user][:middlename].capitalize
        @user.lastname  = params[:user][:lastname].capitalize
        @user.fathername  = params[:user][:fathername].capitalize
        @user.email = params[:user][:email].downcase
        @user.mobileno= params[:user][:mobileno]
        @user.gender = params[:user][:gender]
        @user.city = params[:user][:city]
        @user.state = params[:user][:state]
        @user.country = params[:user][:country]
        @user.dob = params[:user][:dob]
        @user.address1= params[:user][:address1]
        @user.address2= params[:user][:address2]
        @user.address3= params[:user][:address3]
        @user.zip= params[:user][:zip]
        @user.ip = params[:user][:ip]

     if request.post? && valid_captcha?(params[:captcha])  &&  @user.save
    
      @myself = FamilyMember.new
      @myself.user_id = @user.id
      @myself.family_member_user_id = @user.id
      @myself.join_pending = false
      @myself.relation_id = 13
      @dob = User.find(@user.id).dob
      @myself.family_member_user_dob = @dob
      @myself.save
      redirect_to "/users/registration_ack/#{@user.id}"
    else
      render :action => 'new', :alert => "You might have entered the Wrong Captcha Code, please Enter it Again"
  end
        # @user.city = params[:user][:city].capitalize
          
    
  end

#   def create
#      # params[:user][:firstname] = params[:user][:firstname].upcase
#      # params[:user][:lastname] = params[:user][:lastname].upcase
#      # params[:user][:station] = params[:user][:station].upcase
#        @user = User.new(params[:user])
   
#      if request.post? && valid_captcha?(params[:captcha])  &&  @user.save
    
#       @myself = FamilyMember.new
#       @myself.user_id = @user.id
#       @myself.family_member_user_id = @user.id
#       @myself.join_pending = false
#       @myself.relation_id = 13
#       @dob = User.find(@user.id).dob
#       @myself.family_member_user_dob = @dob
#       @myself.save
#       redirect_to "/users/registration_ack/#{@user.id}"
#     else
#       render :action => 'new', :alert => "You might have entered the Wrong Captcha Code, please Enter it Again"
#   end
# end

  def login_page

  end

  def home
    
  end

  def registration_ack
    @user = User.find(params[:id])
    @user.update_attribute(:reqstatus, false)
    # UserMailer.welcome_email(@user).deliver
  end

  def store_password
    @user = User.find(params[:id])
    if params[:user][:password] == params[:user][:password_confirmation]
      @user.password_salt = BCrypt::Engine.generate_salt
      @user.password_hash = BCrypt::Engine.hash_secret(params[:user][:password], @user.password_salt)
      @user.save
      UserMailer.complete_registration_email(@user,params[:user][:password]).deliver
    else
      redirect_to "/users/create_password/#{@user.id}", :notice => 'passwords are not equal'
    end
  end

  def accept_request
    @user = User.find(params[:id])
    @user.update_attribute(:reqstatus, false)
    UserMailer.welcome_email(@user).deliver
    redirect_to "/sessions/login_page/#{@user.user_id}", :notice => 'Mail has been sent to '+@user.firstname
  end

  def decline_request
    @user = User.find(params[:id])
    @user.update_attribute(:reqstatus, false)
    redirect_to "/sessions/login_page/#{@user.user_id}"
  end

  def create_password
      @user = User.find(params[:id])
      unless @user.password_hash.nil?
        redirect_to "/login", :notice => 'user already exists! please login to continue'
      end
      mj_id = "MJ" + "#{@user.id}"
      @user.update_column(:mj_id,mj_id)
  end
# def user_email
#   email = User.find_all_by_email(params[:id])
# if email.nil?
#         errors.add(:email, 'Invalid Company ID')
#       end
# end
# <p><%= link_to 'Change my password', edit_password_url(@resource, :reset_password_token => @resource.reset_password_token) %></p>
  def show
    @user = User.find(params[:id])
  end
  def logsearch
    user = User.authenticate(params[:mj_id], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to "/search", :notice => "Logged in!"
    else
#      flash.now.alert = "Invalid email or password"
       redirect_to "/log", :notice => "Invalid MJID or password"
    end
  end

  def reset_password
    @user = User.find(params[:id])
    mj_id = "MJ" + "#{@user.id}"
    @user.update_column(:mj_id,mj_id)
  end

  def update_password
    @user = User.find(params[:id])
    if params[:user][:password] == params[:user][:password_confirmation]
      @user.password_salt = BCrypt::Engine.generate_salt
      @user.password_hash = BCrypt::Engine.hash_secret(params[:user][:password], @user.password_salt)
      @user.save
      UserMailer.new_password_email(@user,params[:user][:password]).deliver
    else
      redirect_to "/users/reset_password/#{@user.id}", :notice => 'Passwords are not equal !'
    end
  end

  def edit_profile
    @user = User.find(params[:id])    
  end

  def search
      @users = User.search(params[:search]) 
      @products = User.search(params[:search]).order(sort_column + " " + sort_direction).page(params[:page]).per(10) 
  end

  def demo_family
    @user = User.find(1)
  end
 
  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "lastname"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end

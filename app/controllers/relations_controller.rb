class RelationsController < ApplicationController
  # before_filter :already_logged_in
  # GET /relations
  # GET /relations.json
  def index
    @relations = Relation.all(:order => 'serial')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @relations }
    end
  end

  # GET /relations/1
  # GET /relations/1.json
  def show
    @user = User.find(params[:id])
    @user.update_attribute(:reqstatus, false)
    UserMailer.verification_email(@user).deliver
    redirect_to '/family_members/family/1'
  end

  # GET /relations/new
  # GET /relations/new.json
  def new
    @relation = Relation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @relation }
    end
  end

  # GET /relations/1/edit
  def edit
    @relation = Relation.find(params[:id])
  end

  # POST /relations
  # POST /relations.json
  def create
    @relation = Relation.new(params[:relation])

    respond_to do |format|
      if @relation.save
        format.html { redirect_to relations_url, notice: 'Relation was successfully created.' }
        format.json { render json: @relation, status: :created, location: @relation }
      else
        format.html { render action: "new" }
        format.json { render json: @relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /relations/1
  # PUT /relations/1.json
  def update
    @relation = Relation.find(params[:id])

    respond_to do |format|
      if @relation.update_attributes(params[:relation])
        format.html { redirect_to relations_url, notice: 'Relation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relations/1
  # DELETE /relations/1.json
  def destroy
    @relation = Relation.find(params[:id])
    @relation.destroy

    respond_to do |format|
      format.html { redirect_to relations_url }
      format.json { head :no_content }
    end
  end
end

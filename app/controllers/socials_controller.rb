class SocialsController < ApplicationController
 
  def index
    @socials = Social.all.map(&:category).uniq

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @socials }
    end
  end
 
  def show
    @social = Social.find_all_by_category(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @social }
    end
  end
 
  def new
    @social = Social.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @social }
    end
  end
 
  def edit
    @social = Social.find(params[:id])
  end

 
  def create
    @social = Social.new(params[:social])

    respond_to do |format|
      if @social.save
        format.html { redirect_to socials_url, notice: 'Social was successfully created.' }
        format.json { render json: @social, status: :created, location: @social }
      else
        format.html { render action: "new" }
        format.json { render json: @social.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    @social = Social.find(params[:id])

    respond_to do |format|
      if @social.update_attributes(params[:social])
        format.html { redirect_to @social, notice: 'Social was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @social.errors, status: :unprocessable_entity }
      end
    end
  end
 
  def destroy
    @social = Social.find(params[:id])
    @social.destroy

    respond_to do |format|
      format.html { redirect_to socials_url }
      format.json { head :no_content }
    end
  end
end
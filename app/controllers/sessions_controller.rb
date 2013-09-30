class SessionsController < ApplicationController
  skip_before_filter :login_required, :only => [:new, :create, :forgot, :change_password, :about_rajasthan]
  def new

  end

  def create
    user = User.authenticate(params[:mj_id], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to "/sessions/login_page/#{user.id}", :notice => "Logged in!"
    else
#      flash.now.alert = "Invalid email or password"
       redirect_to "/sessions/new", :notice => "Invalid MJID or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to ads_url, :notice => "Logged out!"
  end

  def login_page
    User.update_all(:visited  => false)
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    if current_user.user_id == 0
      redirect_to "/family_members/family/#{@user.id}"
    else
      redirect_to "/family_members/family/#{@user.id}"
    end
  end

  def forgot
    @user = User.find(1)
  end

  def change_password
    u = User.find_by_mj_id(params[:mjid])
    unless u.nil?
      UserMailer.change_password_email(u).deliver
    else
      redirect_to "/change_password", :notice => "MJ Id not found !"
    end
  end

  def edit_page
    params[:user][:firstname] = params[:user][:firstname]
    params[:user][:lastname] = params[:user][:lastname]
    params[:user][:station] = params[:user][:station]
    params[:user][:occupation] = params[:user][:occupation]
    params[:user][:address1] = params[:user][:address1]
    @user = User.find(params[:id])
    logger.info ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{params[:user][:photo]}"
    @user.update_attributes(params[:user])
    redirect_to "/users/edit_profile/#{@user.id}", :notice => "Profile details updated"
  end

  def ref_tree
    @user = User.find(params[:id])
  end

  def about_rajasthan
    
  end
end


class UserMailer < ActionMailer::Base
  
  default :from => 'Maheshwari Jagruth <kabra@maheshwarijagruth.com>'


  def welcome_email(user)
    @user = user
    @url  = "http://#{SITE_URL}/users/create_password/#{@user.id}"
    mail(:to => user.email, :subject => "Welcome to Maheshwari Jagruth")
  end

  def change_password_email(user)
    @user = user
    @url  = "http://#{SITE_URL}/users/reset_password/#{@user.id}"
    mail(:to => user.email, :subject => "Change password Maheshwari Jagruth")
  end

  def new_password_email(user,pwd)
    @user = user
    @pwd = pwd
    @url  = "http://#{SITE_URL}/login"
    mail(:to => @user.email, :subject => "Password changed Maheshwari Jagruth")
  end

  def complete_registration_email(user,pwd)
    @user = user
    @pwd = pwd
    @url  = "http://#{SITE_URL}/login"
    mail(:to => @user.email, :subject => "Registration Successful")
  end
  
   def verification_email(user)
    @user = user
    @url  = "http://#{SITE_URL}/users/create_password/#{@user.id}"
    mail(:to => user.email, :subject => "Verification Completed")
  end
end


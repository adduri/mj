class ApplicationController < ActionController::Base
  # reset captcha code after each request for security
  after_filter :reset_last_captcha_code!

    skip_before_filter :login_required
  
	helper_method :current_user

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def login_required
		unless current_user
	    redirect_to "/login", :notice => 'please login first!'
	  end
	end

	def already_logged_in
	  unless current_user.nil?
	    redirect_to "/sessions/login_page/#{current_user.id}"
	  end
	end
	def required_login
		unless current_user
			redirect_to "/videos/2/edit" , :notice => "show more videos"
		end
	end
   
    def service_login
		unless current_user
			redirect_to "/slog" , :notice => "Post Your services"
		end
	end




end
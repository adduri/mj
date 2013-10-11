class ServicesController < InheritedResources::Base

before_filter :service_login , :only => [:new]


def logsearch
    user = User.authenticate(params[:mj_id], params[:password])
    if user
      session[:mj_id] = user.id
      redirect_to "/services/new", :notice => "Logged in!"
    else
#      flash.now.alert = "Invalid email or password"
       redirect_to "/slog", :notice => "Invalid MJID or password"
    end
  end



end

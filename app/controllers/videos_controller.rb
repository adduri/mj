 class VideosController < InheritedResources::Base

    before_filter  :required_login, :only => [:show]

  def index
    @video = Video.find(2)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @videos }
    end
  end
  def show
    @videos = Video.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video }
    end
  end
  def create
    user = User.authenticate(params[:mj_id], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to "/videos/2", :notice => "Logged in!"
    else
       redirect_to "/videos/2/edit", :notice => "Invalid MJID or password"
    end
  end
end

 
 
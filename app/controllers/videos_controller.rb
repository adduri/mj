 class VideosController < InheritedResources::Base

    before_filter  :login_required, :only => [:show]

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

 

end

 
 
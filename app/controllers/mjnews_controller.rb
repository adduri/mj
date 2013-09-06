class MjnewsController < ApplicationController
  # GET /mjnews
  # GET /mjnews.json
  def index
    @mjnews = Mjnews.all
    # @time = Time.now.strftime("%m/%d/%Y")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mjnews }
    end
  end
 end
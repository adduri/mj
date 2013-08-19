class FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def new
    @feedback = Feedback.new
    @user = User.find(params[:id])
    @show_feedback = Feedback.find_all_by_user_id(@user.id)
  end

  def edit
    @feedback = Feedback.find(params[:id])
  end

  def create
    @feedback = Feedback.new(params[:feedback])
    @feedback.user_id = current_user.id
    @feedback.save
    redirect_to feedbacks_url, notice: 'Feedback was successfully created.'
  end

  def update
    @feedback = Feedback.find(params[:id])
    @feedback.update_attributes(params[:feedback])
    redirect_to feedbacks_url, notice: 'Feedback was successfully updated.'
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to feedbacks_url
  end

  def display_feedback
    @user = User.find(params[:id])
    logger.info "feeeeeeeeeeeeeeeeeedddddd #{params[:feedback][:details].inspect}"
    @fed = Feedback.new
    @fed.details = params[:feedback][:details]
    @fed.user_id = @user.id
    @fed.save
    redirect_to "/feedbacks/new/#{current_user.id}", :notice => "Feedback sent."
  end
end

class RelativesController < ApplicationController
  # GET /relatives
  # GET /relatives.json
  def index
    @relatives = Relative.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @relatives }
    end
  end

  # GET /relatives/1
  # GET /relatives/1.json
  def show
    @relative = Relative.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @relative }
    end
  end

  # GET /relatives/new
  # GET /relatives/new.json
  def new
    @relative = Relative.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @relative }
    end
  end

  # GET /relatives/1/edit
  def edit
    @relative = Relative.find(params[:id])
  end

  # POST /relatives
  # POST /relatives.json
  def create
    @relative = Relative.new(params[:relative])

    respond_to do |format|
      if @relative.save
        format.html { redirect_to @relative, notice: 'Relative was successfully created.' }
        format.json { render json: @relative, status: :created, location: @relative }
      else
        format.html { render action: "new" }
        format.json { render json: @relative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /relatives/1
  # PUT /relatives/1.json
  def update
    @relative = Relative.find(params[:id])

    respond_to do |format|
      if @relative.update_attributes(params[:relative])
        format.html { redirect_to @relative, notice: 'Relative was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @relative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatives/1
  # DELETE /relatives/1.json
  def destroy
    @relative = Relative.find(params[:id])
    @relative.destroy

    respond_to do |format|
      format.html { redirect_to relatives_url }
      format.json { head :no_content }
    end
  end
end

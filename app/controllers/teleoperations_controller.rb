class TeleoperationsController < ApplicationController
  # GET /teleoperations
  # GET /teleoperations.json
  def index
    @teleoperations = Teleoperation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teleoperations }
    end
  end

  # GET /teleoperations/1
  # GET /teleoperations/1.json
  def show
    @teleoperation = Teleoperation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teleoperation }
    end
  end

  # GET /teleoperations/new
  # GET /teleoperations/new.json
  def new
    @teleoperation = Teleoperation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teleoperation }
    end
  end

  # GET /teleoperations/1/edit
  def edit
    @teleoperation = Teleoperation.find(params[:id])
  end

  # POST /teleoperations
  # POST /teleoperations.json
  def create
    @teleoperation = Teleoperation.new(params[:teleoperation])

    respond_to do |format|
      if @teleoperation.save
        format.html { redirect_to @teleoperation, notice: 'Teleoperation was successfully created.' }
        format.json { render json: @teleoperation, status: :created, location: @teleoperation }
      else
        format.html { render action: "new" }
        format.json { render json: @teleoperation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teleoperations/1
  # PUT /teleoperations/1.json
  def update
    @teleoperation = Teleoperation.find(params[:id])

    respond_to do |format|
      if @teleoperation.update_attributes(params[:teleoperation])
        format.html { redirect_to @teleoperation, notice: 'Teleoperation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teleoperation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teleoperations/1
  # DELETE /teleoperations/1.json
  def destroy
    @teleoperation = Teleoperation.find(params[:id])
    @teleoperation.destroy

    respond_to do |format|
      format.html { redirect_to teleoperations_url }
      format.json { head :no_content }
    end
  end
end

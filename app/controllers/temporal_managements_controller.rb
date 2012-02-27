class TemporalManagementsController < ApplicationController
  # GET /temporal_managements
  # GET /temporal_managements.json
  def index
    @temporal_managements = TemporalManagement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @temporal_managements }
    end
  end

  # GET /temporal_managements/1
  # GET /temporal_managements/1.json
  def show
    @temporal_management = TemporalManagement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @temporal_management }
    end
  end

  # GET /temporal_managements/new
  # GET /temporal_managements/new.json
  def new
    @temporal_management = TemporalManagement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @temporal_management }
    end
  end

  # GET /temporal_managements/1/edit
  def edit
    @temporal_management = TemporalManagement.find(params[:id])
  end

  # POST /temporal_managements
  # POST /temporal_managements.json
  def create
    @temporal_management = TemporalManagement.new(params[:temporal_management])

    respond_to do |format|
      if @temporal_management.save
        format.html { redirect_to @temporal_management, notice: 'Temporal management was successfully created.' }
        format.json { render json: @temporal_management, status: :created, location: @temporal_management }
      else
        format.html { render action: "new" }
        format.json { render json: @temporal_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /temporal_managements/1
  # PUT /temporal_managements/1.json
  def update
    @temporal_management = TemporalManagement.find(params[:id])

    respond_to do |format|
      if @temporal_management.update_attributes(params[:temporal_management])
        format.html { redirect_to @temporal_management, notice: 'Temporal management was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @temporal_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temporal_managements/1
  # DELETE /temporal_managements/1.json
  def destroy
    @temporal_management = TemporalManagement.find(params[:id])
    @temporal_management.destroy

    respond_to do |format|
      format.html { redirect_to temporal_managements_url }
      format.json { head :no_content }
    end
  end
end

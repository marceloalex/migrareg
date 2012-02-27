class DayManagementsController < ApplicationController
  # GET /day_managements
  # GET /day_managements.json
  def index
    @day_managements = DayManagement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @day_managements }
    end
  end

  # GET /day_managements/1
  # GET /day_managements/1.json
  def show
    @day_management = DayManagement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @day_management }
    end
  end

  # GET /day_managements/new
  # GET /day_managements/new.json
  def new
    @day_management = DayManagement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @day_management }
    end
  end

  # GET /day_managements/1/edit
  def edit
    @day_management = DayManagement.find(params[:id])
  end

  # POST /day_managements
  # POST /day_managements.json
  def create
    @day_management = DayManagement.new(params[:day_management])

    respond_to do |format|
      if @day_management.save
        format.html { redirect_to @day_management, notice: 'Day management was successfully created.' }
        format.json { render json: @day_management, status: :created, location: @day_management }
      else
        format.html { render action: "new" }
        format.json { render json: @day_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /day_managements/1
  # PUT /day_managements/1.json
  def update
    @day_management = DayManagement.find(params[:id])

    respond_to do |format|
      if @day_management.update_attributes(params[:day_management])
        format.html { redirect_to @day_management, notice: 'Day management was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @day_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_managements/1
  # DELETE /day_managements/1.json
  def destroy
    @day_management = DayManagement.find(params[:id])
    @day_management.destroy

    respond_to do |format|
      format.html { redirect_to day_managements_url }
      format.json { head :no_content }
    end
  end
end

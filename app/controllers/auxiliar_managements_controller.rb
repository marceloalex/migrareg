class AuxiliarManagementsController < ApplicationController
  # GET /auxiliar_managements
  # GET /auxiliar_managements.json
  def index
    @auxiliar_managements = AuxiliarManagement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @auxiliar_managements }
    end
  end

  # GET /auxiliar_managements/1
  # GET /auxiliar_managements/1.json
  def show
    @auxiliar_management = AuxiliarManagement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @auxiliar_management }
    end
  end

  # GET /auxiliar_managements/new
  # GET /auxiliar_managements/new.json
  def new
    @auxiliar_management = AuxiliarManagement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @auxiliar_management }
    end
  end

  # GET /auxiliar_managements/1/edit
  def edit
    @auxiliar_management = AuxiliarManagement.find(params[:id])
  end

  # POST /auxiliar_managements
  # POST /auxiliar_managements.json
  def create
    @auxiliar_management = AuxiliarManagement.new(params[:auxiliar_management])

    respond_to do |format|
      if @auxiliar_management.save
        format.html { redirect_to @auxiliar_management, notice: 'Auxiliar management was successfully created.' }
        format.json { render json: @auxiliar_management, status: :created, location: @auxiliar_management }
      else
        format.html { render action: "new" }
        format.json { render json: @auxiliar_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /auxiliar_managements/1
  # PUT /auxiliar_managements/1.json
  def update
    @auxiliar_management = AuxiliarManagement.find(params[:id])

    respond_to do |format|
      if @auxiliar_management.update_attributes(params[:auxiliar_management])
        format.html { redirect_to @auxiliar_management, notice: 'Auxiliar management was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @auxiliar_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auxiliar_managements/1
  # DELETE /auxiliar_managements/1.json
  def destroy
    @auxiliar_management = AuxiliarManagement.find(params[:id])
    @auxiliar_management.destroy

    respond_to do |format|
      format.html { redirect_to auxiliar_managements_url }
      format.json { head :no_content }
    end
  end
end

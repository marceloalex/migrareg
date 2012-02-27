class CurrentPackagesController < ApplicationController
  # GET /current_packages
  # GET /current_packages.json
  def index
    @current_packages = CurrentPackage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @current_packages }
    end
  end

  # GET /current_packages/1
  # GET /current_packages/1.json
  def show
    @current_package = CurrentPackage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @current_package }
    end
  end

  # GET /current_packages/new
  # GET /current_packages/new.json
  def new
    @current_package = CurrentPackage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @current_package }
    end
  end

  # GET /current_packages/1/edit
  def edit
    @current_package = CurrentPackage.find(params[:id])
  end

  # POST /current_packages
  # POST /current_packages.json
  def create
    @current_package = CurrentPackage.new(params[:current_package])

    respond_to do |format|
      if @current_package.save
        format.html { redirect_to @current_package, notice: 'Current package was successfully created.' }
        format.json { render json: @current_package, status: :created, location: @current_package }
      else
        format.html { render action: "new" }
        format.json { render json: @current_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /current_packages/1
  # PUT /current_packages/1.json
  def update
    @current_package = CurrentPackage.find(params[:id])

    respond_to do |format|
      if @current_package.update_attributes(params[:current_package])
        format.html { redirect_to @current_package, notice: 'Current package was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @current_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_packages/1
  # DELETE /current_packages/1.json
  def destroy
    @current_package = CurrentPackage.find(params[:id])
    @current_package.destroy

    respond_to do |format|
      format.html { redirect_to current_packages_url }
      format.json { head :no_content }
    end
  end
end

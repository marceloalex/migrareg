class GeolocsController < ApplicationController
  # GET /geolocs
  # GET /geolocs.json
  def index
    @geolocs = Geoloc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @geolocs }
    end
  end

  # GET /geolocs/1
  # GET /geolocs/1.json
  def show
    @geoloc = Geoloc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @geoloc }
    end
  end

  # GET /geolocs/new
  # GET /geolocs/new.json
  def new
    @geoloc = Geoloc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @geoloc }
    end
  end

  # GET /geolocs/1/edit
  def edit
    @geoloc = Geoloc.find(params[:id])
  end

  # POST /geolocs
  # POST /geolocs.json
  def create
    @geoloc = Geoloc.new(params[:geoloc])

    respond_to do |format|
      if @geoloc.save
        format.html { redirect_to @geoloc, notice: 'Geoloc was successfully created.' }
        format.json { render json: @geoloc, status: :created, location: @geoloc }
      else
        format.html { render action: "new" }
        format.json { render json: @geoloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /geolocs/1
  # PUT /geolocs/1.json
  def update
    @geoloc = Geoloc.find(params[:id])

    respond_to do |format|
      if @geoloc.update_attributes(params[:geoloc])
        format.html { redirect_to @geoloc, notice: 'Geoloc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @geoloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geolocs/1
  # DELETE /geolocs/1.json
  def destroy
    @geoloc = Geoloc.find(params[:id])
    @geoloc.destroy

    respond_to do |format|
      format.html { redirect_to geolocs_url }
      format.json { head :no_content }
    end
  end
end

class CampaignManagementsController < ApplicationController
  # GET /campaign_managements
  # GET /campaign_managements.json
  def index
    @campaign_managements = CampaignManagement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @campaign_managements }
    end
  end

  # GET /campaign_managements/1
  # GET /campaign_managements/1.json
  def show
    @campaign_management = CampaignManagement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @campaign_management }
    end
  end

  # GET /campaign_managements/new
  # GET /campaign_managements/new.json
  def new
    @campaign_management = CampaignManagement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @campaign_management }
    end
  end

  # GET /campaign_managements/1/edit
  def edit
    @campaign_management = CampaignManagement.find(params[:id])
  end

  # POST /campaign_managements
  # POST /campaign_managements.json
  def create
    @campaign_management = CampaignManagement.new(params[:campaign_management])

    respond_to do |format|
      if @campaign_management.save
        format.html { redirect_to @campaign_management, notice: 'Campaign management was successfully created.' }
        format.json { render json: @campaign_management, status: :created, location: @campaign_management }
      else
        format.html { render action: "new" }
        format.json { render json: @campaign_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /campaign_managements/1
  # PUT /campaign_managements/1.json
  def update
    @campaign_management = CampaignManagement.find(params[:id])

    respond_to do |format|
      if @campaign_management.update_attributes(params[:campaign_management])
        format.html { redirect_to @campaign_management, notice: 'Campaign management was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @campaign_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_managements/1
  # DELETE /campaign_managements/1.json
  def destroy
    @campaign_management = CampaignManagement.find(params[:id])
    @campaign_management.destroy

    respond_to do |format|
      format.html { redirect_to campaign_managements_url }
      format.json { head :no_content }
    end
  end
end

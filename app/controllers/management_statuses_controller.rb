class ManagementStatusesController < ApplicationController
  # GET /management_statuses
  # GET /management_statuses.json
  def index
    @management_statuses = ManagementStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @management_statuses }
    end
  end

  # GET /management_statuses/1
  # GET /management_statuses/1.json
  def show
    @management_status = ManagementStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @management_status }
    end
  end

  # GET /management_statuses/new
  # GET /management_statuses/new.json
  def new
    @management_status = ManagementStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @management_status }
    end
  end

  # GET /management_statuses/1/edit
  def edit
    @management_status = ManagementStatus.find(params[:id])
  end

  # POST /management_statuses
  # POST /management_statuses.json
  def create
    @management_status = ManagementStatus.new(params[:management_status])

    respond_to do |format|
      if @management_status.save
        format.html { redirect_to @management_status, notice: 'Management status was successfully created.' }
        format.json { render json: @management_status, status: :created, location: @management_status }
      else
        format.html { render action: "new" }
        format.json { render json: @management_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /management_statuses/1
  # PUT /management_statuses/1.json
  def update
    @management_status = ManagementStatus.find(params[:id])

    respond_to do |format|
      if @management_status.update_attributes(params[:management_status])
        format.html { redirect_to @management_status, notice: 'Management status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @management_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /management_statuses/1
  # DELETE /management_statuses/1.json
  def destroy
    @management_status = ManagementStatus.find(params[:id])
    @management_status.destroy

    respond_to do |format|
      format.html { redirect_to management_statuses_url }
      format.json { head :no_content }
    end
  end
end

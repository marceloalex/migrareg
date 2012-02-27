class SaleDaysController < ApplicationController
  # GET /sale_days
  # GET /sale_days.json
  def index
    @sale_days = SaleDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sale_days }
    end
  end

  # GET /sale_days/1
  # GET /sale_days/1.json
  def show
    @sale_day = SaleDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sale_day }
    end
  end

  # GET /sale_days/new
  # GET /sale_days/new.json
  def new
    @sale_day = SaleDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sale_day }
    end
  end

  # GET /sale_days/1/edit
  def edit
    @sale_day = SaleDay.find(params[:id])
  end

  # POST /sale_days
  # POST /sale_days.json
  def create
    @sale_day = SaleDay.new(params[:sale_day])

    respond_to do |format|
      if @sale_day.save
        format.html { redirect_to @sale_day, notice: 'Sale day was successfully created.' }
        format.json { render json: @sale_day, status: :created, location: @sale_day }
      else
        format.html { render action: "new" }
        format.json { render json: @sale_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sale_days/1
  # PUT /sale_days/1.json
  def update
    @sale_day = SaleDay.find(params[:id])

    respond_to do |format|
      if @sale_day.update_attributes(params[:sale_day])
        format.html { redirect_to @sale_day, notice: 'Sale day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sale_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_days/1
  # DELETE /sale_days/1.json
  def destroy
    @sale_day = SaleDay.find(params[:id])
    @sale_day.destroy

    respond_to do |format|
      format.html { redirect_to sale_days_url }
      format.json { head :no_content }
    end
  end
end

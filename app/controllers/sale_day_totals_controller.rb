class SaleDayTotalsController < ApplicationController
  # GET /sale_day_totals
  # GET /sale_day_totals.json
  def index
    @sale_day_totals = SaleDayTotal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sale_day_totals }
    end
  end

  # GET /sale_day_totals/1
  # GET /sale_day_totals/1.json
  def show
    @sale_day_total = SaleDayTotal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sale_day_total }
    end
  end

  # GET /sale_day_totals/new
  # GET /sale_day_totals/new.json
  def new
    @sale_day_total = SaleDayTotal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sale_day_total }
    end
  end

  # GET /sale_day_totals/1/edit
  def edit
    @sale_day_total = SaleDayTotal.find(params[:id])
  end

  # POST /sale_day_totals
  # POST /sale_day_totals.json
  def create
    @sale_day_total = SaleDayTotal.new(params[:sale_day_total])

    respond_to do |format|
      if @sale_day_total.save
        format.html { redirect_to @sale_day_total, notice: 'Sale day total was successfully created.' }
        format.json { render json: @sale_day_total, status: :created, location: @sale_day_total }
      else
        format.html { render action: "new" }
        format.json { render json: @sale_day_total.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sale_day_totals/1
  # PUT /sale_day_totals/1.json
  def update
    @sale_day_total = SaleDayTotal.find(params[:id])

    respond_to do |format|
      if @sale_day_total.update_attributes(params[:sale_day_total])
        format.html { redirect_to @sale_day_total, notice: 'Sale day total was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sale_day_total.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_day_totals/1
  # DELETE /sale_day_totals/1.json
  def destroy
    @sale_day_total = SaleDayTotal.find(params[:id])
    @sale_day_total.destroy

    respond_to do |format|
      format.html { redirect_to sale_day_totals_url }
      format.json { head :no_content }
    end
  end
end

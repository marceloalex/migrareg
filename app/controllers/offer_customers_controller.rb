class OfferCustomersController < ApplicationController
  # GET /offer_customers
  # GET /offer_customers.json
  def index
    @offer_customers = OfferCustomer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offer_customers }
    end
  end

  # GET /offer_customers/1
  # GET /offer_customers/1.json
  def show
    @offer_customer = OfferCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @offer_customer }
    end
  end

  # GET /offer_customers/new
  # GET /offer_customers/new.json
  def new
    @offer_customer = OfferCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @offer_customer }
    end
  end

  # GET /offer_customers/1/edit
  def edit
    @offer_customer = OfferCustomer.find(params[:id])
  end

  # POST /offer_customers
  # POST /offer_customers.json
  def create
    @offer_customer = OfferCustomer.new(params[:offer_customer])

    respond_to do |format|
      if @offer_customer.save
        format.html { redirect_to @offer_customer, notice: 'Offer customer was successfully created.' }
        format.json { render json: @offer_customer, status: :created, location: @offer_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @offer_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /offer_customers/1
  # PUT /offer_customers/1.json
  def update
    @offer_customer = OfferCustomer.find(params[:id])

    respond_to do |format|
      if @offer_customer.update_attributes(params[:offer_customer])
        format.html { redirect_to @offer_customer, notice: 'Offer customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @offer_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_customers/1
  # DELETE /offer_customers/1.json
  def destroy
    @offer_customer = OfferCustomer.find(params[:id])
    @offer_customer.destroy

    respond_to do |format|
      format.html { redirect_to offer_customers_url }
      format.json { head :no_content }
    end
  end
end

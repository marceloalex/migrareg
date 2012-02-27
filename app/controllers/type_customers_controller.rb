class TypeCustomersController < ApplicationController
  # GET /type_customers
  # GET /type_customers.json
  def index
    @type_customers = TypeCustomer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_customers }
    end
  end

  # GET /type_customers/1
  # GET /type_customers/1.json
  def show
    @type_customer = TypeCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_customer }
    end
  end

  # GET /type_customers/new
  # GET /type_customers/new.json
  def new
    @type_customer = TypeCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_customer }
    end
  end

  # GET /type_customers/1/edit
  def edit
    @type_customer = TypeCustomer.find(params[:id])
  end

  # POST /type_customers
  # POST /type_customers.json
  def create
    @type_customer = TypeCustomer.new(params[:type_customer])

    respond_to do |format|
      if @type_customer.save
        format.html { redirect_to @type_customer, notice: 'Type customer was successfully created.' }
        format.json { render json: @type_customer, status: :created, location: @type_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @type_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_customers/1
  # PUT /type_customers/1.json
  def update
    @type_customer = TypeCustomer.find(params[:id])

    respond_to do |format|
      if @type_customer.update_attributes(params[:type_customer])
        format.html { redirect_to @type_customer, notice: 'Type customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_customers/1
  # DELETE /type_customers/1.json
  def destroy
    @type_customer = TypeCustomer.find(params[:id])
    @type_customer.destroy

    respond_to do |format|
      format.html { redirect_to type_customers_url }
      format.json { head :no_content }
    end
  end
end

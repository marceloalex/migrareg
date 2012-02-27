class TypeAddressesController < ApplicationController
  # GET /type_addresses
  # GET /type_addresses.json
  def index
    @type_addresses = TypeAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_addresses }
    end
  end

  # GET /type_addresses/1
  # GET /type_addresses/1.json
  def show
    @type_address = TypeAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_address }
    end
  end

  # GET /type_addresses/new
  # GET /type_addresses/new.json
  def new
    @type_address = TypeAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_address }
    end
  end

  # GET /type_addresses/1/edit
  def edit
    @type_address = TypeAddress.find(params[:id])
  end

  # POST /type_addresses
  # POST /type_addresses.json
  def create
    @type_address = TypeAddress.new(params[:type_address])

    respond_to do |format|
      if @type_address.save
        format.html { redirect_to @type_address, notice: 'Type address was successfully created.' }
        format.json { render json: @type_address, status: :created, location: @type_address }
      else
        format.html { render action: "new" }
        format.json { render json: @type_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_addresses/1
  # PUT /type_addresses/1.json
  def update
    @type_address = TypeAddress.find(params[:id])

    respond_to do |format|
      if @type_address.update_attributes(params[:type_address])
        format.html { redirect_to @type_address, notice: 'Type address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_addresses/1
  # DELETE /type_addresses/1.json
  def destroy
    @type_address = TypeAddress.find(params[:id])
    @type_address.destroy

    respond_to do |format|
      format.html { redirect_to type_addresses_url }
      format.json { head :no_content }
    end
  end
end

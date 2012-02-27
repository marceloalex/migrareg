class TypePhonesController < ApplicationController
  # GET /type_phones
  # GET /type_phones.json
  def index
    @type_phones = TypePhone.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_phones }
    end
  end

  # GET /type_phones/1
  # GET /type_phones/1.json
  def show
    @type_phone = TypePhone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_phone }
    end
  end

  # GET /type_phones/new
  # GET /type_phones/new.json
  def new
    @type_phone = TypePhone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_phone }
    end
  end

  # GET /type_phones/1/edit
  def edit
    @type_phone = TypePhone.find(params[:id])
  end

  # POST /type_phones
  # POST /type_phones.json
  def create
    @type_phone = TypePhone.new(params[:type_phone])

    respond_to do |format|
      if @type_phone.save
        format.html { redirect_to @type_phone, notice: 'Type phone was successfully created.' }
        format.json { render json: @type_phone, status: :created, location: @type_phone }
      else
        format.html { render action: "new" }
        format.json { render json: @type_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_phones/1
  # PUT /type_phones/1.json
  def update
    @type_phone = TypePhone.find(params[:id])

    respond_to do |format|
      if @type_phone.update_attributes(params[:type_phone])
        format.html { redirect_to @type_phone, notice: 'Type phone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_phones/1
  # DELETE /type_phones/1.json
  def destroy
    @type_phone = TypePhone.find(params[:id])
    @type_phone.destroy

    respond_to do |format|
      format.html { redirect_to type_phones_url }
      format.json { head :no_content }
    end
  end
end

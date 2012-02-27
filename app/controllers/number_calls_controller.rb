class NumberCallsController < ApplicationController
  # GET /number_calls
  # GET /number_calls.json
  def index
    @number_calls = NumberCall.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @number_calls }
    end
  end

  # GET /number_calls/1
  # GET /number_calls/1.json
  def show
    @number_call = NumberCall.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @number_call }
    end
  end

  # GET /number_calls/new
  # GET /number_calls/new.json
  def new
    @number_call = NumberCall.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @number_call }
    end
  end

  # GET /number_calls/1/edit
  def edit
    @number_call = NumberCall.find(params[:id])
  end

  # POST /number_calls
  # POST /number_calls.json
  def create
    @number_call = NumberCall.new(params[:number_call])

    respond_to do |format|
      if @number_call.save
        format.html { redirect_to @number_call, notice: 'Number call was successfully created.' }
        format.json { render json: @number_call, status: :created, location: @number_call }
      else
        format.html { render action: "new" }
        format.json { render json: @number_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /number_calls/1
  # PUT /number_calls/1.json
  def update
    @number_call = NumberCall.find(params[:id])

    respond_to do |format|
      if @number_call.update_attributes(params[:number_call])
        format.html { redirect_to @number_call, notice: 'Number call was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @number_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /number_calls/1
  # DELETE /number_calls/1.json
  def destroy
    @number_call = NumberCall.find(params[:id])
    @number_call.destroy

    respond_to do |format|
      format.html { redirect_to number_calls_url }
      format.json { head :no_content }
    end
  end
end

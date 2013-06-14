class  SuperAdmin::TaluksController < ApplicationController
  # GET /taluks
  # GET /taluks.json
  def index
    @taluks = Taluk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taluks }
    end
  end

  # GET /taluks/1
  # GET /taluks/1.json
  def show
    @taluk = Taluk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taluk }
    end
  end

  # GET /taluks/new
  # GET /taluks/new.json
  def new
    @taluk = Taluk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taluk }
    end
  end

  # GET /taluks/1/edit
  def edit
    @taluk = Taluk.find(params[:id])
  end

  # POST /taluks
  # POST /taluks.json
  def create
    @taluk = Taluk.new(params[:taluk])

    respond_to do |format|
      if @taluk.save
        format.html { redirect_to @taluk, notice: 'Taluk was successfully created.' }
        format.json { render json: @taluk, status: :created, location: @taluk }
      else
        format.html { render action: "new" }
        format.json { render json: @taluk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taluks/1
  # PUT /taluks/1.json
  def update
    @taluk = Taluk.find(params[:id])

    respond_to do |format|
      if @taluk.update_attributes(params[:taluk])
        format.html { redirect_to @taluk, notice: 'Taluk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @taluk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taluks/1
  # DELETE /taluks/1.json
  def destroy
    @taluk = Taluk.find(params[:id])
    @taluk.destroy

    respond_to do |format|
      format.html { redirect_to taluks_url }
      format.json { head :no_content }
    end
  end
end

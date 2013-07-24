class  SuperAdmin::CommunityTypesController < ApplicationController
  # GET /community_types
  # GET /community_types.json
  def index
    @community_types = CommunityType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @community_types }
    end
  end

  # GET /community_types/1
  # GET /community_types/1.json
  def show
    @community_type = CommunityType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @community_type }
    end
  end

  # GET /community_types/new
  # GET /community_types/new.json
  def new
    @community_type = CommunityType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @community_type }
    end
  end

  # GET /community_types/1/edit
  def edit
    @community_type = CommunityType.find(params[:id])
  end

  # POST /community_types
  # POST /community_types.json
  def create
    @community_type = CommunityType.new(params[:community_type])

    respond_to do |format|
      if @community_type.save
        format.html { redirect_to super_admin_community_types_path, notice: 'Community type was successfully created.' }
        format.json { render json: @community_type, status: :created, location: @community_type }
      else
        format.html { render action: "new" }
        format.json { render json: @community_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /community_types/1
  # PUT /community_types/1.json
  def update
    @community_type = CommunityType.find(params[:id])

    respond_to do |format|
      if @community_type.update_attributes(params[:community_type])
        format.html { redirect_to super_admin_community_types_path, notice: 'Community type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @community_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_types/1
  # DELETE /community_types/1.json
  def destroy
    @community_type = CommunityType.find(params[:id])
    @community_type.destroy

    respond_to do |format|
      format.html { redirect_to super_admin_community_types_path }
      format.json { head :no_content }
    end
  end
end

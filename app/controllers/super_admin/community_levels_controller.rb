class  SuperAdmin::CommunityLevelsController < ApplicationController
  # GET /community_levels
  # GET /community_levels.json
  def index
    @community_levels = CommunityLevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @community_levels }
    end
  end

  # GET /community_levels/1
  # GET /community_levels/1.json
  def show
    @community_level = CommunityLevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @community_level }
    end
  end

  # GET /community_levels/new
  # GET /community_levels/new.json
  def new
    @community_level = CommunityLevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @community_level }
    end
  end

  # GET /community_levels/1/edit
  def edit
    @community_level = CommunityLevel.find(params[:id])
  end

  # POST /community_levels
  # POST /community_levels.json
  def create
    @community_level = CommunityLevel.new(params[:community_level])

    respond_to do |format|
      if @community_level.save
        format.html { redirect_to @community_level, notice: 'Community level was successfully created.' }
        format.json { render json: @community_level, status: :created, location: @community_level }
      else
        format.html { render action: "new" }
        format.json { render json: @community_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /community_levels/1
  # PUT /community_levels/1.json
  def update
    @community_level = CommunityLevel.find(params[:id])

    respond_to do |format|
      if @community_level.update_attributes(params[:community_level])
        format.html { redirect_to @community_level, notice: 'Community level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @community_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_levels/1
  # DELETE /community_levels/1.json
  def destroy
    @community_level = CommunityLevel.find(params[:id])
    @community_level.destroy

    respond_to do |format|
      format.html { redirect_to community_levels_url }
      format.json { head :no_content }
    end
  end
end

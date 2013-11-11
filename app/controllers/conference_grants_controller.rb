class ConferenceGrantsController < ApplicationController
  # GET /conference_grants
  # GET /conference_grants.json
  def index
    @conference_grants = ConferenceGrant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conference_grants }
    end
  end

  # GET /conference_grants/1
  # GET /conference_grants/1.json
  def show
    @conference_grant = ConferenceGrant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conference_grant }
    end
  end

  # GET /conference_grants/new
  # GET /conference_grants/new.json
  def new
    @conference_grant = ConferenceGrant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conference_grant }
    end
  end

  # GET /conference_grants/1/edit
  def edit
    @conference_grant = ConferenceGrant.find(params[:id])
  end

  # POST /conference_grants
  # POST /conference_grants.json
  def create
    @conference_grant = ConferenceGrant.new(params[:conference_grant])

    respond_to do |format|
      if @conference_grant.save
        format.html { redirect_to @conference_grant, notice: 'Conference grant was successfully created.' }
        format.json { render json: @conference_grant, status: :created, location: @conference_grant }
      else
        format.html { render action: "new" }
        format.json { render json: @conference_grant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conference_grants/1
  # PUT /conference_grants/1.json
  def update
    @conference_grant = ConferenceGrant.find(params[:id])

    respond_to do |format|
      if @conference_grant.update_attributes(params[:conference_grant])
        format.html { redirect_to @conference_grant, notice: 'Conference grant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @conference_grant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conference_grants/1
  # DELETE /conference_grants/1.json
  def destroy
    @conference_grant = ConferenceGrant.find(params[:id])
    @conference_grant.destroy

    respond_to do |format|
      format.html { redirect_to conference_grants_url }
      format.json { head :no_content }
    end
  end
end

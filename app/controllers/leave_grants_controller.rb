class LeaveGrantsController < ApplicationController
  # GET /leave_grants
  # GET /leave_grants.json
  def index
    @leave_grants = LeaveGrant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leave_grants }
    end
  end

  # GET /leave_grants/1
  # GET /leave_grants/1.json
  def show
    @leave_grant = LeaveGrant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leave_grant }
    end
  end

  # GET /leave_grants/new
  # GET /leave_grants/new.json
  def new
    @leave_grant = LeaveGrant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leave_grant }
    end
  end

  # GET /leave_grants/1/edit
  def edit
    @leave_grant = LeaveGrant.find(params[:id])
  end

  # POST /leave_grants
  # POST /leave_grants.json
  def create
    @leave_grant = LeaveGrant.new(params[:leave_grant])

    respond_to do |format|
      if @leave_grant.save
        format.html { redirect_to @leave_grant, notice: 'Leave grant was successfully created.' }
        format.json { render json: @leave_grant, status: :created, location: @leave_grant }
      else
        format.html { render action: "new" }
        format.json { render json: @leave_grant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leave_grants/1
  # PUT /leave_grants/1.json
  def update
    @leave_grant = LeaveGrant.find(params[:id])

    respond_to do |format|
      if @leave_grant.update_attributes(params[:leave_grant])
        format.html { redirect_to @leave_grant, notice: 'Leave grant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leave_grant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_grants/1
  # DELETE /leave_grants/1.json
  def destroy
    @leave_grant = LeaveGrant.find(params[:id])
    @leave_grant.destroy

    respond_to do |format|
      format.html { redirect_to leave_grants_url }
      format.json { head :no_content }
    end
  end
end

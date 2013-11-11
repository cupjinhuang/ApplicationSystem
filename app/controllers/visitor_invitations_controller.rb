class VisitorInvitationsController < ApplicationController
  # GET /visitor_invitations
  # GET /visitor_invitations.json
  def index
    @visitor_invitations = VisitorInvitation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visitor_invitations }
    end
  end

  # GET /visitor_invitations/1
  # GET /visitor_invitations/1.json
  def show
    @visitor_invitation = VisitorInvitation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visitor_invitation }
    end
  end

  # GET /visitor_invitations/new
  # GET /visitor_invitations/new.json
  def new
    @visitor_invitation = VisitorInvitation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visitor_invitation }
    end
  end

  # GET /visitor_invitations/1/edit
  def edit
    @visitor_invitation = VisitorInvitation.find(params[:id])
  end

  # POST /visitor_invitations
  # POST /visitor_invitations.json
  def create
    @visitor_invitation = VisitorInvitation.new(params[:visitor_invitation])

    respond_to do |format|
      if @visitor_invitation.save
        format.html { redirect_to @visitor_invitation, notice: 'Visitor invitation was successfully created.' }
        format.json { render json: @visitor_invitation, status: :created, location: @visitor_invitation }
      else
        format.html { render action: "new" }
        format.json { render json: @visitor_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /visitor_invitations/1
  # PUT /visitor_invitations/1.json
  def update
    @visitor_invitation = VisitorInvitation.find(params[:id])

    respond_to do |format|
      if @visitor_invitation.update_attributes(params[:visitor_invitation])
        format.html { redirect_to @visitor_invitation, notice: 'Visitor invitation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visitor_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitor_invitations/1
  # DELETE /visitor_invitations/1.json
  def destroy
    @visitor_invitation = VisitorInvitation.find(params[:id])
    @visitor_invitation.destroy

    respond_to do |format|
      format.html { redirect_to visitor_invitations_url }
      format.json { head :no_content }
    end
  end
end

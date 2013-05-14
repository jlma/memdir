class EmergencyContactsController < ApplicationController
  before_action :set_emergency_contact, only: [:show, :edit, :update, :destroy]

  # GET /emergency_contacts
  # GET /emergency_contacts.json
  def index
    @emergency_contacts = EmergencyContact.all
  end

  # GET /emergency_contacts/1
  # GET /emergency_contacts/1.json
  def show
  end

  # GET /emergency_contacts/new
  def new
    @emergency_contact = EmergencyContact.new
  end

  # GET /emergency_contacts/1/edit
  def edit
  end

  # POST /emergency_contacts
  # POST /emergency_contacts.json
  def create
    @emergency_contact = EmergencyContact.new(emergency_contact_params)

    respond_to do |format|
      if @emergency_contact.save
        format.html { redirect_to @emergency_contact, notice: 'Emergency contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @emergency_contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emergency_contacts/1
  # PATCH/PUT /emergency_contacts/1.json
  def update
    respond_to do |format|
      if @emergency_contact.update(emergency_contact_params)
        format.html { redirect_to @emergency_contact, notice: 'Emergency contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_contacts/1
  # DELETE /emergency_contacts/1.json
  def destroy
    @emergency_contact.destroy
    respond_to do |format|
      format.html { redirect_to emergency_contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emergency_contact
      @emergency_contact = EmergencyContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emergency_contact_params
      params.require(:emergency_contact).permit(:fkMemberID, :name, :addr1, :addr2, :city, :state, :zip, :phoneNumber)
    end
end

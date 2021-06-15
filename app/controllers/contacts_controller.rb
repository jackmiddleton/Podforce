class ContactsController < ApplicationController

  def index
    if params[:query].present?
      @contacts = Contact.search_by_contact(params[:query])
    else
      @contacts = Contact.all
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user = current_user
    if @contact.save!
      redirect_to contact_path(@contact), notice: "New Item Saved"
    else
      render :new
    end
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
        redirect_to contacts_path, notice: "Contact Edited"
    else
        render :edit
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    if @contact.present?
      @contact.destroy
    end
    redirect_to contacts_path, notice: "Contact Deleted"
  end


  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :instagram, :twitter, :linkedin)
  end
end

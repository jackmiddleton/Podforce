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
    if @contact.save
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

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :instagram, :twitter, :linkedin)
  end
end

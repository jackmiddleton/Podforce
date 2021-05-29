class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    # if @contact.save
    #   redirect_to school_category_items_path(@school, @category), notice: "New Item Saved"
    # else
    #   render :new
    # end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

end

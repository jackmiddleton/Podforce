class ContactsController < ApplicationController

  def index
    if params[:query].present?
      @contacts = Contact.search_by_contact(params[:query])
    else
      @contacts = Contact.all
    end
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

class EmailsController < ApplicationController
    def index
        if params[:query].present?
      @emails = Email.search_by_email(params[:query])
    else
      #@emails = Email.all
      @emails = Email.where(user: current_user)
    end
  end

    def show
        @email = Email.find(params[:id])
    end

    def new
        @email = Email.new
    end

    def create
        @email = Email.new(email_params)
       # if @email.save
       #     redirect_to
       # else
       #     render :new
       # end
    end

    def edit
        @email = Email.find(params[:id])
    end

    def update
        @email = Email.find(params[:id])
    end

    private
    def email_params
        params.require(:email).permit(:to, :content, :cc, :date_time)
    end
end

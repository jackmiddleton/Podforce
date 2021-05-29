class EmailsController < ApplicationController
    def index
        @email = Email.find(params[:id])
    end

    def show
        @email = Email.new
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
        params.require(:email).permit(:to, :subject, :content, :cc, :date_time)
    end
end

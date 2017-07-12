class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Your demand has been transmitted, we'll get at you shortly"
      redirect_to root_path
    else
      flash[:danger] = "An error occured, please try again"
      render :new
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :object, :description)
  end

end

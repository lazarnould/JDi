class MessagesController < ApplicationController
  before_action :find_message, only: [:show, :destroy, :edit, :update]

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.conversation = params[:conversation_id]
    @message.user = current_user
    if @message.save
      render :new  #Temporary before creation of notifications
    else
      flash[:alert] = "An error occured, try again"
      render :new
    end
  end

  def edit
  end

  def update
    @message.update(message_params)
    render :new
  end

  def show
  end

  def destroy
    @message.destroy
    render :new
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def find_message
    @message = Message.find(params[:id])
  end
end

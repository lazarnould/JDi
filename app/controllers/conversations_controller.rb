class ConversationsController < ApplicationController
  def create
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def index
    @conversations = Conversation.where(user_id: current_user)
  end

  def destroy
    @conversation = Conversation.find(params[:id])
    @conversation.destroy
  end
end

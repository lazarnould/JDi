class TicketsController < ApplicationController
  before_action :find_ticket, only: [:edit, :update, :show]

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user
    if @ticket.save
      flash[:notice] = "You're ticket has been sended, we'll come back to you shortly"
      @conversation = Conversation.build(ticket: @ticket, section: @ticket.section)
      redirect_to conversation_path(@conversation)
    else
      flash[:alert] = "An error occured, try again"
      render :new
    end
  end

  def edit
  end

  def update
    @ticket.update(ticket_params)
    @conversation = Conversation.where(ticket_id: @ticket)
    redirect_to conversation_path(@conversation)
  end

  def show
  end

  def index
    @tickets = Ticket.all
  end

  private

  def ticket_params
    params.require(:ticket).permit(:object, :description)
  end

  def find_ticket
    Ticket.find(params[:id])
  end

end

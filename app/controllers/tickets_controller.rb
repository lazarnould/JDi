class TicketsController < ApplicationController
  before_action :find_ticket, only: [:edit, :update, :show]

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.save
  end

  def edit
  end

  def update
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

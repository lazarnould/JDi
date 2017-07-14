class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
  end

  private

  def ticket_params
    params.require(:ticket).permit(:email, :object, :description)
  end

end

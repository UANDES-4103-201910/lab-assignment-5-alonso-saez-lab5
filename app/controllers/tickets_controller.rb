class TicketsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
	@ticket = Ticket.create(ticket_params)
	render json :@ticket
  end

  def destroy
	@ticket = Ticket.find(params[:id])
	@ticket.destroy()
  end

  def update
	@ticket = Ticket.find(params[:id])
	@ticket.update(ticket_params)
	render json :@ticket
  end
  
  def show
  @user = User.find(params[:id])
  render json: @user
  end

  private

  def ticket_params
        params.require(:ticket).permit(:id, :ticket_type_id, :order_id)
  end
end

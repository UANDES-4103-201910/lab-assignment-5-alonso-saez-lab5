class EventsController < ApplicationController
  def create
	@event = Event.create(event_params)
	render json :@event
  end

  def destroy
	@event = Event.find(params[:id])
	@event.destroy()
  end

  def update
	@event = Event.find(params[:id])
	@event.update(event_params)
	render json :@event
  end

  private

  def event_params
        params.require(:event).permit(:id, :name, :description, :start_date, :event_venue_id)
  end
end

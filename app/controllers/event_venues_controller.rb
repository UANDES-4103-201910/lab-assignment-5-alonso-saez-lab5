class EventVenuesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
	@event_venue = EventVenue.create(event_venue_params)
	render json: @event_venue
  end

  def destroy
	@event_venue = EventVenue.find(params[:id])
	@event_venue.destroy()
  end

  def update
	@event_venue = EventVenue.find(params[:id])
	@event_venue.update(event_venue_params)
	render json: @event_venue
  end

  def show
  @event_venue = EventVenue.find(params[:id])
  render json: @event_venue
  end

  def index
  @event_venue = EventVenue.all
  render json: @event_venue
  end

  private

  def event_venue_params
        params.require(:event_venue).permit(:id, :name, :address, :capacity)
  end
end

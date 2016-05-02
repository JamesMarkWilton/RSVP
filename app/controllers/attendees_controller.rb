class AttendeesController < ApplicationController
  def new
    @event = Event.find_by_id(params[:id])
    @attendees = @event.attendees
    @attendee = Attendee.new
    render "events/show/"
  end

  def create
    event = Event.find_by_id(params[:event_id])
    event.attendees.create!(name: params[:attendee][:name])
    redirect_to event_path event
  end
end

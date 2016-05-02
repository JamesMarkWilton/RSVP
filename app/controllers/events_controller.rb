class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    record_hash = {}
    date = DateTime.new(params[:event]["datetime(1i)"].to_i,
                        params[:event]["datetime(2i)"].to_i,
                        params[:event]["datetime(3i)"].to_i,
                        params[:event]["datetime(4i)"].to_i,
                        params[:event]["datetime(5i)"].to_i,
                        00, "-06:00")

    Event.column_names.each do |item|
      if(item != "id" && item != "created_at" && item != "updated_at")
        if(item == "datetime")
          record_hash.store(item, date)
        else
          record_hash.store(item, params[:event][item.to_s])
        end
      end
    end

    event = Event.create!(record_hash)

    redirect_to event_path event
  end

  def show
    @event = Event.find_by_id(params[:id]) end
end

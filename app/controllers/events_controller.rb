class EventsController < ApplicationController

  def index
    @header_title = "Events"
    @page_title = "Rails Girls Events"
    @page_subtitle = "Get your hands dirty and start coding!"

    @upcoming_events = Event.upcoming
    @past_events     = Event.past
  end

  def show
    @event = Event.find_by_slug(params[:id])

    @header_title  = "%s, %s" % [@event.title, @event.date]
    @page_title    = "Rails Girls #{@event.title}"
    @page_subtitle = @event.date
    @header_image  = "event-#{@event.slug}"
  end
end

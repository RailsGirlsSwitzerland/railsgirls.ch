class EventsController < ApplicationController
  def index
    @header_title = "Events"
    @page_title = "Rails Girls Events"
    @page_subtitle = "Get your hands dirty and start coding!"

    @upcoming_events = Event.upcoming
    @past_events     = Event.past
  end
end

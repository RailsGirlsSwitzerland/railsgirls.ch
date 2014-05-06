class EventsController < ApplicationController
  def index
    @header_title = "Events"
    @page_title = "Rails Girls Events"
    @page_subtitle = "Get your hands dirty and start coding!"

    @upcoming_events = $events
    @past_events     = $events
  end
end

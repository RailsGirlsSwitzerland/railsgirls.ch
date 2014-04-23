class EventsController < ApplicationController
  def index
    @title = "Events"
    @page_title = "Rails Girls Events"
    @page_subtitle = "Get your hands dirty and start coding!"
  end
end

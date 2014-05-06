class PagesController < ApplicationController

  def home
    @header_title = "Home"
    @page_title = "Rails Girls Switzerland"
    @page_subtitle = "Get started with technology"
  end

  def team
    @header_title = "Team"
    @page_title = "Meet the Team"
    @page_subtitle = "We make magic happen"
  end

  def contact 
    @header_title = "Contact"
    @page_title = "Get in touch"
    @page_subtitle = "Looking for a workshop in you city? We love to help!"
  end

end

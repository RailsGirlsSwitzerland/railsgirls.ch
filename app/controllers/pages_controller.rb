class PagesController < ApplicationController

  def home
    @header_title = "Home"
    @page_title = "Rails Girls Switzerland"
    @page_subtitle = "Get started with technology"

    @upcoming_events = Event.upcoming
    @posts = Post.all
  end

  def team
    @header_title = "Team"
    @page_title = "Meet the Team"
    @page_subtitle = "We make magic happen"

    @team = $team.group_by{ |s| s.group }
  end

  def contact
    @header_title = "Contact"
    @page_title = "Get in touch"
    @page_subtitle = "Looking for a workshop in you city? We love to help!"
  end

  def afterwards
    @header_title = "After The Event"
    @page_title   = "After The Event"
    @page_subtitle   = "How To Continue With Programming"
  end

end

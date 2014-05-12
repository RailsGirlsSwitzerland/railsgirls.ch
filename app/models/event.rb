class Event
  include HasProperties

  has_properties :title, :venue, :address, :zip, :location, :start_date, :end_date

  def initialize params
    super
    @start_date = @start_date.to_datetime
    @end_date   = @end_date.to_datetime
  end

  class << self
    def upcoming
      $events.select{ |event| event.end_date >= Date.today }
    end

    def past
      $events.select{ |event| event.end_date < Date.today }
    end

    def find_by_slug(slug)
      $events.select{ |event| event.slug == slug }.first
    end
  end

  def image_path
    if File.exists?("#{Rails.root}/app/assets/images/events/#{slug}.jpg")
      "events/#{slug}.jpg"
    else
      "events/missing.jpg"
    end
  end

  def slug
    title.parameterize
  end

  def date
    if start_date == end_date
      start_date.strftime("%-d %B %Y")
    else
      "%s - %s" % [start_date.strftime("%-d"), end_date.strftime("%-d %B %Y")]
    end
  end
end

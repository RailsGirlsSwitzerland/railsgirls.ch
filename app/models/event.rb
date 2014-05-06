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
  end

  def image_path
    path = title.parameterize
    if File.exists?("#{Rails.root}/app/assets/images/events/#{path}.jpg")
      "events/#{path}.jpg"
    else
      "events/missing.jpg"
    end
  end
end

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
end

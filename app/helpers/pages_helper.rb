module PagesHelper
  def background_image(string)
    if string
      "background-#{string}-header"
    else
      "background-#{controller.controller_name}-#{controller.action_name}-header"
    end
  end

  # TODO: remove helper after we have a show view for every event page
  def event_link(event)
    if event.rg_url.empty?
      event_path(event.slug)
    else
      event.rg_url
    end
  end
end

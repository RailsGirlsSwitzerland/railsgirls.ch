module PagesHelper
  def background_image(string)
    if string
      "background-#{string}-header"
    else
      "background-#{controller.controller_name}-#{controller.action_name}-header"
    end
  end
end

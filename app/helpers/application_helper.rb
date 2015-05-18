module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    if page_title.empty?
      base_app_title
    else
      page_title + " | " + base_app_title
    end
  end

  def base_app_title
    Rails.configuration.x.app_title
  end
end

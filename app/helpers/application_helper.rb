module ApplicationHelper
    def full_title(page_title)
    base_title = "Pistachio"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def sidebar_links
    m = {
      :pages => {
        :name => "Home",
        :url => root_path,
        :icon => "icon-home"
      }
    }

    return m
  end
end

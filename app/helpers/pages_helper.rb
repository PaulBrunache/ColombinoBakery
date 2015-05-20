module PagesHelper
    def active_link(link_text, link_path)
      
      if current_page? link_path
          class_name = "current"
      else
          class_name = nil
      end
    
      content_tag(:li, class: class_name) do
        link_to link_text, link_path
      end
    end
end

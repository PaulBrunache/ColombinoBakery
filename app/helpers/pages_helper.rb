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
    def options_for_page(value = nil)
      if(value == 'pages')
       return ['Home', 'Catering', 'Deli', 'Pastries','Pizza','Subs']
      else
        return ['true','false']
      end
    end
end

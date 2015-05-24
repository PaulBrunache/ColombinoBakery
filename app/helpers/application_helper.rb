module ApplicationHelper
    def page_names
       return ['', 'catering','pastries', 'deli','pizza','subs']
    end
    def current_uri
        request.env['PATH_INFO'].downcase.delete! '/'
    end
    def get_featured_image 
      @page = Page.all
      @page.picture.url.where(active: true).where(page_name: current_uri)
    end

end

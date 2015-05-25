module ApplicationHelper
  def page_names
    ['', 'catering','pastries', 'deli','pizza','subs']
    #returns an array of existing pagenames
    #if pages are null this won't work so I will find a dynamic alternative later
    # return Page.all.pluck(:page_name).downcase
  end

  def current_uri
    request.env['PATH_INFO'].downcase.delete! '/'
  end

  def get_featured_image
    url = request.env['PATH_INFO'].downcase.delete! '/'
    if url.empty?
        url = 'home'
    end
    @page = Page.where(active: true, page_name: url).first
    #if page with current_uri as pagename exists, then return picture url
    if @page
      return @page.picture.url
    else
      return nil
    end

  end

end

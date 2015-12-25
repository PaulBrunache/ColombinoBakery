module ApplicationHelper
  def page_names
    ['', 'catering','pastries', 'deli','pizza','subs']
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

  def after_sign_in_path_for(resource)
    sign_in_url = new_admin_user_session_path
    if request.referer == sign_in_url
     super
    else
     stored_location_for(resource) || request.referer || root_path
    end
  end

end

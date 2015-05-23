module ApplicationHelper
    def page_names
       return ['/', '/catering','/pastries', '/deli','/pizza','/subs']
    end
    def current_uri
        request.env['PATH_INFO'].downcase
    end
end

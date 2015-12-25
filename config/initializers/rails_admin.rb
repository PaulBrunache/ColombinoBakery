RailsAdmin.config do |config|

  config.authorize_with do
    authenticate_admin_user!
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.current_user_method(&:current_admin_user)
end

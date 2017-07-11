RailsAdmin.config do |config|

  ### Popular gems integration


config.main_app_name = ["iBarbosa", "A feirinha de antigamente, agora no seu bolso"]
  ## == Devise ==
   config.authenticate_with do
    warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
   config.authorize_with :cancan


config.navigation_static_links = {
  'Parceiros' => 'https://www.youtube.com/channel/UCSlNYAhyb-DWZlRGWPkdE3w'
}

config.navigation_static_label = "Links Úteis"

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true




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
end

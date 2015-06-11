Rails.application.routes.draw do
  para_at '/'
  devise_for :admin_users
  
  mount RedactorRails::Engine => '/redactor_rails'

  root 'home#index'

  resource :form_tests, only: :show
  resource :ressources, only: :show
  resource :newsletters, only: :show

  namespace :admin do
    get 'iframe_left_column' => 'theme#iframe_left_column'
    get 'iframe_right_column' => 'theme#iframe_right_column'
    get 'gallery' => 'theme#gallery'
    get 'calendar' => 'theme#calendar'
    get 'faq' => 'theme#faq'
    get 'ui_kits' => 'theme#ui_kits'
  end
end

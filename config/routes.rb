Rails.application.routes.draw do
  mount Para::Engine, at: '/', as: 'para'
  devise_for :admin_users
  mount RedactorRails::Engine => '/redactor_rails'

  root 'home#index'

  resource :form_tests, only: :show
  resource :ressources, only: :show
end

Rails.application.routes.draw do
  root 'front#index'
  get 'about', to: 'front#about'
  get 'contact', to: 'front#contact'

  devise_for :users
  post 'change_locale', to: 'application#change_locale', as: 'change_locale'





  
  get "up" => "rails/health#show", as: :rails_health_check
end

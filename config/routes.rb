Rails.application.routes.draw do

  post 'change_locale', to: 'application#change_locale'

  scope "(:locale)", locale: /en|hi/ do
    root 'home#index'
    get 'about', to: 'front#about'
    get 'contact', to: 'front#contact'
  
    devise_for :users
    
  end



  
  get "up" => "rails/health#show", as: :rails_health_check
end

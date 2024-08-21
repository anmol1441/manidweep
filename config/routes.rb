Rails.application.routes.draw do
  resources :super_categories do
    resources :sub_categories
  end
  get "admin/dashboard", to: "back#index"

  post 'change_locale', to: 'application#change_locale'

  scope "(:locale)", locale: /en|hi/ do
    root 'home#index'
    get 'about', to: 'front#about'
    get 'contact', to: 'front#contact'   
  end

  devise_for :users,  controllers: { sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations',  invitations: 'users/invitations' }

  # devise_scope :user do
  #   get 'users/edit' => 'users/registrations#edit', :as => 'edit_user_registration'
  #   put 'users' => 'users/registrations#update', :as => 'user_registration'
  # end

  # resources :user


  
  get "up" => "rails/health#show", as: :rails_health_check
end

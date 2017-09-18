Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'static_pages/home', as: 'home'

  root 'static_pages#home'

  get 'static_pages/about'

  resources :users, only: [:new, :create]

  resources :artists, only: [:index, :show]

end

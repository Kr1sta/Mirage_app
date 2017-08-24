Rails.application.routes.draw do

  get 'users/new'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'static_pages/home'

  root 'static_pages#home'

  get 'static_pages/about'

end

Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "home#index"

  resources :services
  resources :subscriptions

  match '/webhook', :to => 'subscriptions#webhook', via: [:post]
  match '/account_importer', :to => 'account_importer#create', via: [:post]
end

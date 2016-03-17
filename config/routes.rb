Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :admin_users, :path => '', :path_names => {:sign_in => 'signin'}

  resources :page_texts

  root 'pages#home'

  resources :food_prices, :users, :categories, :pages

  get 'home' , to: 'pages#home'
  get 'catering' , to: 'pages#catering'
  get 'deli', to: 'pages#deli'
  get 'pizza', to: 'pages#pizza'
  get 'pastries' , to: 'pages#pastries'
  get 'subs' , to: 'pages#subs'
  get '*path', to: 'pages#home'

end

# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :employees do
    get 'profile/show'
  end

  resources :food_items do
    get :discarded, on: :collection
    get :restore, on: :member
  end

  get '/options_price', to: 'food_items#options'

  resources :item_groups do
    get :discarded, on: :collection
    get :restore, on: :member
  end

  resources :discounts do
    get :discarded, on: :collection
    get :restore, on: :member
  end

  resources :menus

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :customers
  devise_for :employees, controllers: { invitations: 'employees/invitations' }

  root 'dashboard#index'
end

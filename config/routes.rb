Rails.application.routes.draw do
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

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :customers
  devise_for :employees, controllers: { invitations: 'employees/invitations' }

  root 'dashboard#index'
end

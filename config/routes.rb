Rails.application.routes.draw do
  resources :item_groups
  resources :discounts do
    get :discarded, on: :collection
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :customers
  devise_for :employees, controllers: { invitations: 'employees/invitations' }

  root 'dashboard#index'
end

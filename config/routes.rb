Rails.application.routes.draw do
  resources :item_groups
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :customers
  devise_for :employees, controllers: { invitations: 'employees/invitations' }

  root 'dashboard#index'
  get "all_categories", to: "item_groups#all_categories"
end

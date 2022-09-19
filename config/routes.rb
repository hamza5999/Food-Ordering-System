Rails.application.routes.draw do
  get 'item_groups/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :customers
  devise_for :employees, controllers: { invitations: 'employees/invitations' }

  root 'home#index'
  get 'home/index'
end

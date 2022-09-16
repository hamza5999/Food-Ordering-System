Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :customers
  devise_for :employees, controllers: { invitations: 'employees/invitations' }

  root 'home#index'
  get 'home/index'
end

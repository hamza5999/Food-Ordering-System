Rails.application.routes.draw do
  devise_for :customers
  devise_for :employees

  root 'home#index'
  get 'home/index'
end

Rails.application.routes.draw do
  devise_for :customers
  devise_for :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

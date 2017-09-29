Rails.application.routes.draw do
  devise_for :users
  root 'home#homepage'
  resources :tweets

  # devise_scope :users do
  #   get 'login', to: 'home#index'
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

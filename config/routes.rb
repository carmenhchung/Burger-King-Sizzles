Rails.application.routes.draw do
  devise_for :users
  root 'home#homepage'
  resources :tweets
  # get 'home#homepage'
  # root 'tweets#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

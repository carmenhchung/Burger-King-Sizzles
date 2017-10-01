Rails.application.routes.draw do
  resources :crowns
  resources :replies
  devise_for :users
  root 'home#index'
  resources :tweets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

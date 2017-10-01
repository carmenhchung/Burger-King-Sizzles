Rails.application.routes.draw do
  resources :crowns
  resources :replies
  devise_for :users
  authenticated :user do
    root :to => 'tweets#index', as: :authenticated_root
  end
  root 'home#homepage'
  get '/profile', to: "home#profile", as: 'user'
  resources :tweets do
    member do
      put "like", to: "tweets#upvote"
      put "dislike", to: "tweets#downvote"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

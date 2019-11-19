Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bikes, only: [ :index, :destroy, :update, :create, :new] do
    resources :rentals, only: [ :new, :create ]
  end
  resources :rentals, only: [ :index ]
end

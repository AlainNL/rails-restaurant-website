Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#home', as: :home
  resources :menus do
    resources :bookings, only: [:create, :update]
  end
  resources :menus do
    resources :items
  end
  # Defines the root path route ("/")
  # root "articles#index"
end

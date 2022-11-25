Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'contact/index'
  get '/about', to: "about#index"
  get 'home/index'
  get 'product/index'
  resources :products, :home, :about, :contact, :dashboard
  root "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

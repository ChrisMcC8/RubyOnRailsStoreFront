Rails.application.routes.draw do
  get 'contact/index'
  get 'about/index'
  get 'home/index'
  get 'product/index'
  resources :products, :home, :about, :contact
  root "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

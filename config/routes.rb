# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cart_line_items
  resources :shopping_carts
  resources :user_profiles
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'carts/show'
  resources :prod_categories
  get 'dashboard/index'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'contact/index'
  get '/about/index'
  get 'home/index'
  get '/about/edit'
  get 'product/index'
  get 'categories/index'
  get '/categories/:id', to: 'categories#show', as: 'category'

  get 'carts/:id' => 'carts#show', as: 'cart'
  delete 'carts/:id' => 'carts#destroy'

  post 'products/add_to_cart/:id', to: 'products#add_to_cart', as: 'add_to_cart'
  delete 'products/remove_from_cart/:id', to: 'products#remove_from_cart', as: 'remove_from_cart'

  resources :products, :home, :about, :contact, :dashboard, :categories, :orders, :carts
  root 'home#index'

  # button_to "Add to cart", line_items_path(:product_id => product.id)

  # link_to "Add (+1)", line_item_add_path(:id => line_item), method: :post
  # link_to "Reduce (-1)", line_item_reduce_path(:id => line_item), method: :post
  # link_to "Remove item", line_item_path(line_item), method: :delete

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

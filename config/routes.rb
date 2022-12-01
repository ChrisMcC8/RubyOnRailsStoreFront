Rails.application.routes.draw do
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
  get '/about', to: "about#index"
  get 'home/index'
  get 'product/index'
  get 'categories/index'
  get '/categories/:id', to: 'categories#show', as: 'category'

  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"

  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"

  resource :cart, only: [:show] do
    put 'add/:product_id', to: 'carts#add', as: :add_to
    put 'remove/:product_id', to: 'carts#remove', as: :remove_from
  end


  resources :products, :home, :about, :contact, :dashboard, :categories, :orders, :carts
  root "home#index"

  # button_to "Add to cart", line_items_path(:product_id => product.id)

  # link_to "Add (+1)", line_item_add_path(:id => line_item), method: :post
  # link_to "Reduce (-1)", line_item_reduce_path(:id => line_item), method: :post
  # link_to "Remove item", line_item_path(line_item), method: :delete


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

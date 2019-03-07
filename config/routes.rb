Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  get 'products/index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get '/', to: 'pages#home'

  get 'bags', to: 'bags#index'
  get 'bags/:id', to: 'bags#show', as: :bag

  get 'accessories', to: 'accessories#index'
  get 'accessories/:id', to: 'accessories#show', as: :accessory

  root to: 'pages#home'

  Rails.application.routes.draw do
    get 'order_items/create'
    get 'order_items/update'
    get 'order_items/destroy'
    get 'carts/show'
    get 'products/index'
      get 'bags/:id', to: 'bags#show', as: :name
  end

  Rails.application.routes.draw do
    get 'order_items/create'
    get 'order_items/update'
    get 'order_items/destroy'
    get 'carts/show'
    get 'products/index'
      get 'accessories/:id', to: 'accessories#show'
  end

  Rails.application.routes.draw do
    resources :products, only: [:index]
    resource :cart, only: [:show]
    resources :order_items, only: [:create, :update, :destroy]
    root to: "products#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get '/', to: 'pages#home'

  get 'bags', to: 'bags#index'
  get 'bags/:id', to: 'bags#show', as: :bag

  root to: 'pages#home'

  Rails.application.routes.draw do
    get 'bags/:id', to: 'bags#show', as: :name
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users,controllers: {sessions: 'devise/sessions', registrations: 'devise/registrations',passwords: 'devise/passwords', confirmations: 'devise/confirmations'}, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'forget', confirmation: 'verification', unlock: 'unblock', sign_up: 'signup' }
  
 

  
  devise_scope :user do
    get 'signup', to: 'users/registrations#create'
    get 'forget', to: 'devise/passwords#new'
    get 'logout', to: "users/sessions#destroy"
  end

  get 'order', to: 'orders#order'
  get 'carts', to: 'carts#show'
  get 'checkout', to: 'carts#checkout'
  get 'home' , to: 'home#index'
  get 'about' , to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'shop', to: 'shops#shop'
  get 'shop_single', to: 'products#shop_single'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root 'home#index'

  resources :users


  resources :products
end

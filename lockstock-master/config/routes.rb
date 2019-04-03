Rails.application.routes.draw do
  devise_for :nusers
  devise_for :admins
  devise_for :users
  get 'cart/index'

  resources :stockphotos
  root 'static_pages#home'

  get '/contactus' => 'static_pages#contactus'

  get '/about' => 'static_pages#about'

  get '/login' => 'user#login'
  get '/logout' => 'user#logout'
  
  get '/cart' => 'cart#index'
  get '/cart/:id', to: 'cart#add'
 get '/clearcart', to: 'cart#clearCart'
 get '/cart/decrease/:id' => 'cart#decrease'
 get '/cart/remove/:id' => 'cart#remove'

end

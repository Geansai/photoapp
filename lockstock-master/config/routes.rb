Rails.application.routes.draw do
 ## devise_for :admins
  resources :categories
  get 'orderitems/index'

  get 'orderitems/show'

  get 'orderitems/new'

  get 'orderitems/edit'

    resources :orders do 
    resources:orderitems
  end

 ## devise_for :nusers
##devise_for :admins
devise_for :webdevs do 
  resources :orders
 end
  
  devise_for :users do 
  resources :orders
  end
   get '/checkout' => 'cart#createOrder'
  get 'cart/index'

  resources :stockphotos
  root 'static_pages#home'
  
  post '/search' => 'stockphotos#search'

  get '/contactus' => 'static_pages#contactus'

  get '/about' => 'static_pages#about'

  get '/login' => 'user#login'
  get '/logout' => 'user#logout'
  
  get '/cart' => 'cart#index'
  get '/cart/:id', to: 'cart#add'
 get '/clearcart', to: 'cart#clearCart'
 get '/cart/decrease/:id' => 'cart#decrease'
 get '/cart/remove/:id' => 'cart#remove'

get '/checkout' => 'cart#createOrder'
root :to => 'site#home' 

get '/paid/:id' => 'static_pages#paid'
get '/paid/' => 'static_pages#paid'

get 'category/:title', to: 'stockphotos#category'
get '/orders' => 'orders#index'
get '/license' => 'static_pages#license'
post '/search' => 'stockphotos#search'
get '/imagegallery' => 'static_pages#imagegallery'

end





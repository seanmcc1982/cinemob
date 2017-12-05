Rails.application.routes.draw do
  
 # root 'home#listing'
  
  #devise_for :admins
  #devise_for :users
  #devise_for :administrators
  
  #devise_for :customers
  
    resources :bookings do 
   resources :bookingitems 
  end
  
  devise_for :users do
   resources:orders
  end
  
  get '/checkout' => 'cart#createOrder'
  
  devise_for :admins
  
  resources :films
  resources :screens

  resources :adminsessions
  resources :showings
  resources :customersessions
  resources :subscriptions
    
  get '/showtimes' => 'showings#index'
  get '/showtimes/:id' => 'showings#add'
  get '/showtimes/remove/:id' => 'showings#remove'
  
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clear'
  get '/cart/:id' => 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'

  get '/subscriptions' => 'subscription#index'
  get '/subscriptions/:id' => 'subscription#add'
  get '/subscriptions/remove/:id' => 'subscription#unsubscribe'

  get '/register' => 'user#register'
  get '/unregister' => 'user#unregister'

  get '/login' => 'user#login'
  get '/logout' => 'user#logout'

  get '/pwreset' => 'user#pwreset'
  
  get '/adminlogin' => 'admin#login'
  get '/adminlogout' => 'admin#logout'
  
  get '/bookinghistory' => 'bookings#index'
  
  get '/screens' => 'screens#index'
  get '/screens/:id' => 'screens#add'
  get '/screens/remove/:id' => 'screens#remove'

  get '/films' => 'films#index'
  get '/films/:id' => 'films#add'
  get '/films/remove/:id' => 'films#remove'
  
  get '/users' => 'user#index'
  get '/users/remove/:id' => 'user#remove'
 
  get '/sessions' => 'customersessions#index'
  
  get '/adminsessions' => 'adminsessions#index'
  
  root 'showings#index'
  
  root :to => 'showings#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end

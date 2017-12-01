Rails.application.routes.draw do
  
 # root 'home#listing'
  

  devise_for :administrators
  devise_for :unregisteredcustomers
  devise_for :customers
  
  root 'showings#index'
  
  resources :films
  resources :prices
  resources :screens
  resources :bookings
  resources :adminsessions
  resources :showings
  resources :customersessions
  
  get '/listings' => 'showings#index'
  
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clear'
  get '/cart/:id' => 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'

  get '/subscribe' => 'user#sub'
  get '/unsubscribe' => 'user#unsub'

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
 
  get '/prices' => 'prices#index'
  get '/prices/:id' => 'pricess#add'
  get '/prices/remove/:id' => 'prices#remove'

  get '/films' => 'films#index'
  get '/films/:id' => 'films#add'
  get '/films/remove/:id' => 'films#remove'
  
  get '/showtimes' => 'showings#index'
  get '/showtimes/:id' => 'showings#add'
  get '/showtimes/remove/:id' => 'showings#remove'

  get '/users' => 'user#index'
  get '/users/remove/:id' => 'user#remove'
 
  get '/sessions' => 'customersessions#index'
  
  get '/adminsessions' => 'adminsessions#index'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end

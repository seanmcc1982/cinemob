Rails.application.routes.draw do
  get 'cart/add'

  get 'cart/remove'

  get 'cart/clear'

  get 'user/sub'

  get 'user/unsub'

  get 'user/history'

  get 'user/login'

  get 'user/logout'

  get 'user/register'

  get 'user/pwreset'

  get 'admin/login'

  get 'admin/logout'

  get 'admin/screen'

  get 'admin/price'

  get 'admin/film'

  get 'admin/showing'

  get 'admin/user'

  devise_for :administrators
  devise_for :unregisteredcustomers
  devise_for :customers
  resources :screens
  resources :films
  resources :adminsessions
  resources :customersessions
  resources :prices
  resources :bookings
  resources :showings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end

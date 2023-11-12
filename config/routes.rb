Rails.application.routes.draw do
  resources :events
   devise_for :users

  root 'pages#home'
  get 'event' => 'pages#event'
  get 'contact' => 'pages#contact'
 
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

end
require_relative "boot"
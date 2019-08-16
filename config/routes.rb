Rails.application.routes.draw do
  
get '/team', to: 'static#team'
get '/contact', to: 'static#contact'

resources :city
resources :comment
resources :gossip
resources :user
end

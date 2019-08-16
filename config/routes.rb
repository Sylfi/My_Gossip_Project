Rails.application.routes.draw do

root 'gossips#index'

get '/team', to: 'static#team'
get '/contact', to: 'static#contact'

resources :welcome
resources :cities
resources :comments
resources :gossips
resources :users
end

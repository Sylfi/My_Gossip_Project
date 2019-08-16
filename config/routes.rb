Rails.application.routes.draw do
  
#get ‘static/team', to: ’nomdufichiercontroller#nom de la méthodemetho’

  resources :city
resources :comment
resources :gossip
resources :user
end

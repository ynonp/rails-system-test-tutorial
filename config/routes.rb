Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'thewalls#show'
  resource :thewall, only: [:show, :create, :destroy]
end

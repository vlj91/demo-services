Rails.application.routes.draw do
  get '/healthcheck', to: 'healthcheck#ping'
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/healthcheck', to: 'healthcheck#ping'
  resources :categories
end

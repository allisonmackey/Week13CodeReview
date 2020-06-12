Rails.application.routes.draw do
  resources :parks
  root to: 'parks#index'
  get '/search' => 'parks#search'
  get '/page' => 'parks#page'
end

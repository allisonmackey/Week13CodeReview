Rails.application.routes.draw do
  resources :parks
  get '/search' => 'parks#search'
  get '/page' => 'parks#page'
end

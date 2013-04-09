WsBookstore::Application.routes.draw do

  match '/' => 'home#index', as: 'root'
  resources :orders


  resources :books
end

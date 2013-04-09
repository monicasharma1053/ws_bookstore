WsBookstore::Application.routes.draw do

  match '/' => 'home#index', as: 'root'
  
  resources :orders do
    resources :books, only: [:index, :show, :destroy]
  end
  resources :books

  get  'orders/:id/browse' => 'orders#browse', as: 'order_books_browse'
  post 'orders/:order_number/checkout' => 'orders#checkout', as: 'checkout'
  post 'orders/:order_number/books/:book_id/purchase' => 'books#purchase', as: 'purchase_book'
  post 'orders/:order_number/books/:book_id/return' => 'books#return', as: 'return_book'
end
Rails.application.routes.draw do
  get 'books/create'
  get 'books/update'
  get 'books/destroy'
  get 'books/new'
  get 'books/show'
  get 'books/index'
  get 'books/edit'
  devise_for :users
  root to: 'pages#home'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

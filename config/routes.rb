Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  resources :lists, only: [:new, :create, :index, :show] do
    resources :booksmarks, only: [:new, :create, :destroy]
  end



  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/create'
  # get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: "lists/index"
end

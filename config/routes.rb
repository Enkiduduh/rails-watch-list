Rails.application.routes.draw do
root to: "lists#index"
resources :lists, except: [:edit, :update] do
  resources :bookmarks, only: [:new, :create]
  resources :reviews, only: :create
end
resources :bookmarks, only: :destroy
resources :reviews, only: :destroy
end

# root to: "lists#index"
# get 'bookmarks/new'
# get 'bookmarks/create'
# get 'bookmarks/destroy'
# resources :lists, only: [:new, :create, :index, :show] do
#   resources :booksmarks, only: [:new, :create, :destroy]
# end

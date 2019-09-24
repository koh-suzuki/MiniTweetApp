Rails.application.routes.draw do
  root 'home#top'
  get 'top', to: 'home#top'
  get 'about', to: 'home#about'
  get 'posts/new', to: 'posts#new'
  post 'posts/create', to: 'posts#create'
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  get 'posts/index', to: 'posts#index'
  get 'posts/:id', to: 'posts#show', as: :post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

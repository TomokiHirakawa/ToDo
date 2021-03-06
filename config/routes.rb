Rails.application.routes.draw do
  get 'posts/index' => 'posts#index'
  get 'top' => 'home#top'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

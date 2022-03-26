Rails.application.routes.draw do
  get "posts/index" => "posts#index"

  # Add a new route for the "new" action
  get "posts/new" => "posts#new"

  get "posts/:id" => "posts#show"

  # Add a new route for the "create" action
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"  
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#dsetroy"
  # get "home/top" => "home#top"
  get "top" => "home#top"
  get "/" => "home#top"
  get "about" => "home#about"
end

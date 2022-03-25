Rails.application.routes.draw do
  get "posts/index" => "posts#index"

  # Add a new route for the "new" action
  get "posts/new" => "posts#new"

  get "posts/:id" => "posts#show"

  # Add a new route for the "create" action
  post "posts/create" => "posts#create"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  
  # get "home/top" => "home#top"
  get "top" => "home#top"
  get "/" => "home#top"
  get "about" => "home#about"
end

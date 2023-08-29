Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/studios", to: "studios#index"
  get "/studios/:id", to: "studios#show"
  get "/animes", to: "animes#index"
  get "/animes/:id", to: "animes#show"
end

# Rails.application.routes.draw do
# resources :users do
# resources :posts


# get '/users/:id/posts', to:"users#posts_index"

# end



Rails.application.routes.draw do
  resources :users do
    resources :posts
  end
end
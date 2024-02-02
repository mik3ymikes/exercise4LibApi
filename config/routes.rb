Rails.application.routes.draw do
resources :users
resources :posts


get '/users/:id/posts', to:"users#posts_index"

end

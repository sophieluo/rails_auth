Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "albums#index"

  resources :albums do
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end

# Prefix Verb   URI Pattern                Controller#Action
#       root GET    /                          albums#index
#     albums GET    /albums(.:format)          albums#index
#            POST   /albums(.:format)          albums#create
#  new_album GET    /albums/new(.:format)      albums#new
# edit_album GET    /albums/:id/edit(.:format) albums#edit
#      album GET    /albums/:id(.:format)      albums#show
#            PATCH  /albums/:id(.:format)      albums#update
#            PUT    /albums/:id(.:format)      albums#update
#            DELETE /albums/:id(.:format)      albums#destroy
#      login GET    /login(.:format)           sessions#cool
#            POST   /login(.:format)           sessions#create
#     logout GET    /logout(.:format)          sessions#destroy
#     signup GET    /signup(.:format)          users#new
#      users POST   /users(.:format)           users#create

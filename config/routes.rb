Rails.application.routes.draw do
  
  root 'photos#index'

  get '/photos/new' => 'photos#new'
  post '/photos/new' => 'photos#create'
  get '/photos/:id' => 'photos#show'
  post '/photos/search' => 'photos#search'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  
  root 'photos#index'

  get '/photos/new' => 'photos#new'
  post '/photos/new' => 'photos#create'
  post '/photos/search' => 'photos#search'
  get 'about', to: 'photos#about', as: 'about'
  get 'help', to: 'photos#help', as: 'help'
  get '/photos/:id' => 'photos#show'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

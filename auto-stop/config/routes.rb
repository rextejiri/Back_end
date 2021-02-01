Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/car', to: 'car#index'
  get '/car/:id', to: 'car#show'
  post '/car', to: 'car#create'
  delete '/car/:id', to: 'car#delete'
  put '/car/:id', :to => 'car#update'
end

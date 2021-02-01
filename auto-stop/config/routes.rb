Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get('/car', { :to => 'car#index' })
  get('/car/:id', { :to => 'car#show' })
  post('/car', { :to => 'car#create' })
end



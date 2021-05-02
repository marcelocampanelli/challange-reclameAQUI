Rails.application.routes.draw do
  post '/complaint', to: 'complaints#create'
  get '/complaint/search', to: 'complaints#search'
end

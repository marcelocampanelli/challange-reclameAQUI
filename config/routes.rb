Rails.application.routes.draw do
  post '/complaint', to: 'complaints#make'
  get '/complaint/search', to: 'complaints#search'
end

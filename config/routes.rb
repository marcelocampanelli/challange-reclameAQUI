Rails.application.routes.draw do
  post '/complaint', to: 'complaints#create'
end

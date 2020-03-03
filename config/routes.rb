Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/auth', to: 'user#check'        #Authenticate the user
  post '/new', to: 'user#create'        #Create a new user
  post 'new_order', to: 'order#create'  #Create new order

  get '/orders', to: 'order#index'       #Show all the orders placed so far
  get '/order/:id', to: 'order#show'     #Show specific order
  get '/user/:id/:orders', to: 'user#show_orders'  #Lists the orders made by the user
  get '/user/:id', to: 'user#show_user'



end

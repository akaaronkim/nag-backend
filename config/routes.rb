Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/auth', to: 'user#check'        #Authenticate the user
  post '/new', to: 'user#create'        #Create a new user
  
end

Rails.application.routes.draw do
	namespace :api do
    	namespace :v1 do
    		post '/signup', to: 'users#create'
    		get '/index', to: 'users#index'
    		post '/login', to: 'users#show'
  		end
  	end
end

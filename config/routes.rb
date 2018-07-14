Rails.application.routes.draw do
	namespace :api do
    	namespace :v1 do
    		post '/login', to: 'users#create'
    		get '/index', to: 'users#index'
  		end
  	end
end

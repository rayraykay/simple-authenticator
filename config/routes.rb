Rails.application.routes.draw do
	get 	'/login', 		to: 'sessions#new'
	post 	'/login', 		to: 'sessions#create'
	# delete 	'/logout', 		to: 'sessions#destroy'
	
	get 	'/register', 	to: 'users#new'
	
	get 'welcome/index'
	
	resources :articles do
		resources :comments
	end
	resources :users
	resources :sessions

	root 'welcome#index'
end

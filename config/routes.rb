Rails.application.routes.draw do
  resources :lessons
  resources :crafts
  resources :recipes
  resources :games
  resources :songs
  resources :programevents
  resources :students
  resources :leaders
  resources :events
  resources :programs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# set up the initial post controller and index view
#root 'posts#index' 
#root 'posts#index' as: 'home'
root 'welcome#index'

#create a regular route
get 'welcome' => 'welcome#index' 
get 'program' => 'program#index'
#get 'about' => 'pages#about' as: 'about'
# this is going to the pages controller to get the about view


# sets up for CRUD actions
resources :activities



end

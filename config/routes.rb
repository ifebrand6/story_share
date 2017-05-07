Rails.application.routes.draw do
 
  root 'public#index' 
 
  resources:stories
  get 'stories/delete', :as => 'delete_story'
   
  resources:pages
  resources:sections
  resources:admin_users


  # member do
  #   get :delete
  #   end
  #   resources:
  # end
  get 'public/show/:permalink', :to => 'public#show'

 get 'admin', :to => "access#index"
  get 'access/login'
  post 'access/logout'
  post 'access/attempt_login'

 # match ':controller(/:action(/:id))', :via => [:get, :post]
  # get 'access/index'

 
# AdminUser 
  # get 'admin_users/index'

  # get 'admin_users/new'
  #  post 'admin_users/create'

  # get 'admin_users/edit'
  #  post 'admin_users/update'

  # get 'admin_users/delete'
  # post 'admin_users/remove' :as 'admin' adnin_user

# story route
  # get 'stories/index'
  # post 'stories/create'

  # get '/stories' => 'stories#index'


  # get 'stories/show/:id' => 'stories#show', as: :stories_show

  # get 'stories/new'

  

  # get 'stories/edit'
  # post 'stories/update'
 # get 'pages/delete'
 #  get 'stories/delete'
  # post 'stories/destroy'
  #pages
  # get 'pages/' =>  'pages#index', as: :pages

  # get 'pages/new'
  # post 'pages/create'
  # get 'pages/edit'
  # get 'pages/:id' => 'pages#show', as: :page
  # get 'pages/:id/sections' => 'sections#index', as: :pages_section

  
  
  # post 'pages/update'

  
  # post 'pages/destroy'

 
  #sections route
  #  get 'sections/index'
  #  get 'sections/show/:id' => 'sections#show', as: :sections_show

  # get 'sections/new'
  # post 'sections/create'

  # get 'sections/edit'
  # post 'sections/update'

  get 'sections/delete'
  # post 'sections/destroy'

  

  resources :instructments
  resources :instructmes

  # get 'user/index'

  # get 'user/edit'

  # get 'user/new'

  # get 'user/create'

  
  
  # root 'stories#index'
  # match ':controller(/:action(/:id)', :via => :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  
 
  get 'stories/index'
  post 'stories/create'

  get '/stories' => 'stories#index'


  get 'stories/show/:id' => 'stories#show', as: :stories_show

  get 'stories/new'

  

  get 'stories/edit'
  post 'stories/update'

  get 'stories/delete'
  post 'stories/destroy'
  #pages
  get 'pages/' =>  'pages#index', as: :pages

  get 'pages/new'
  post 'pages/create'
  get 'pages/edit'
  get 'pages/:id' => 'pages#show', as: :page
  get 'pages/:id/sections' => 'sections#index', as: :pages_section

  
  
  post 'pages/update'

  
  post 'pages/destroy'

  get 'pages/delete'
  #sections route
   get 'sections/index'
   get 'sections/show/:id' => 'sections#show', as: :sections_show

  get 'sections/new'
  post 'sections/create'

  get 'sections/edit'
  post 'sections/update'

  get 'sections/delete'
  post 'sections/destroy'

  

  resources :instructments
  # resources :instructmes

  get 'user/index'

  get 'user/edit'

  get 'user/new'

  get 'user/create'

  
  
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

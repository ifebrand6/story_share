Rails.application.routes.draw do
  get 'sections/index'

  get 'sections/show/:id' => 'sections#show', as: :sections_show

  get 'sections/new'
  post 'sections/create'

  get 'sections/edit'
  post 'sections/update'

  get 'sections/delete'
  post 'sections/destroy'

  get 'pages/index'

   get 'pages/show/:id' => 'pages#show', as: :pages_show

  get 'pages/new'
  post 'pages/create'
  post 'pages/update'

  get 'pages/edit'
  post 'pages/destroy'

  get 'pages/delete'

  resources :instructments
  # resources :instructmes

  get 'user/index'

  get 'user/edit'

  get 'user/new'

  get 'user/create'

  post 'stories/create'

  get '/stories' => 'stories#index'

   get 'stories/index'

  get 'stories/show/:id' => 'stories#show', as: :stories_show

  get 'stories/new'

  

  get 'stories/edit'
  post 'stories/update'

  get 'stories/delete'
  post 'stories/destroy'
  
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

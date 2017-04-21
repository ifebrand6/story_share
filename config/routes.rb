Rails.application.routes.draw do
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

  get 'stories/delete'
  
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'home#top'

  get "/auth/:provider/callback" => "sessions#create" 
  delete "/logout" => "sessions#destroy" 
  
  namespace :admin do
    get 'practices/index'
    get 'practices/show'
    get 'practices/new'
    get 'practices/create'
    get 'practices/edit'
    get 'practices/update'
    get 'practices/destroy'
    get 'chapters/index'
    get 'chapters/show'
    get 'chapters/new'
    get 'chapters/create'
    get 'chapters/edit'
    get 'chapters/update'
    get 'chapters/destroy'
    get 'lessons/index'
    get 'lessons/show'
    get 'lessons/new'
    get 'lessons/create'
    get 'lessons/edit'
    get 'lessons/update'
    get 'lessons/destroy'
    get 'dashboards/index'
    get 'login', to: 'user_sessions#new'
    post'login', to: 'user_sessions#create'
    root "dashboards#index"
    resource :dashboard, only: %i[index]
    resources :lessons
    resources :chapters
    resources :practices
  end 

  resources :lessons, only: [:index]
  resources :chapters, only: [:show]
  resources :practices do
    collection do
      get 'db'
      get 'er'
      get 'answer'
    end 
    member do
      post 'sql'
      post 'judge'
      get 'editor'
      get 'sql'
      post 'execute'
      get 'answer'
    end
  end
  
end

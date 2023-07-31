Rails.application.routes.draw do
  root 'home#top'

  get "/auth/:provider/callback" => "sessions#create" 
  delete "/logout" => "sessions#destroy" 
  
  namespace :admin do
    get 'login', to: 'user_sessions#new'
    post'login', to: 'user_sessions#create'
    delete'logout', to: 'user_sessions#destroy'
    root "lessons#index"
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

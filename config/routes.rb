Rails.application.routes.draw do
  root 'home#top'

  resources :lessons, only: [:index]
  resources :chapters, only: [:show]
  resources :practices do
    collection do
      post 'sql'
      get 'db'
      get 'er'
      get 'answer'
    end
    member do
      post 'judge'
      get 'editor'
      get 'sql'
      post 'execute'
      get 'answer'
    end
  end
end

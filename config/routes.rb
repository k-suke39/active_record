Rails.application.routes.draw do
  root 'home#top'

  resources :lessons, only: [:index]
  resources :chapters, only: [:index]
  resources :practices do
    collection do
      get 'editor'
      get 'sql'
      get 'execute'
      get 'db'
      get 'er'
      get 'answer'
    end
  end
end

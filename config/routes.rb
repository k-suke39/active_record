Rails.application.routes.draw do
  root 'home#top'

  resources :lessons, only: [:index]
  resources :chapters, only: [:index]
  resources :practices, only: [:index]
end

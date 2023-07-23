# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#top'

  
  resources :chapters, only: [:index,:show]
end

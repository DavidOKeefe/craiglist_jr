Rails.application.routes.draw do
  root 'categories#index'

  resources :categories, only: [:index] do
    resources :articles
  end
end

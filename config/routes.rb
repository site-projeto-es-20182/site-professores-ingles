Rails.application.routes.draw do

  resources :activities
  resources :my_classes
  resources :doubts
  devise_for :users
  resources :texts do
    resources :comments, module: :texts
  end

  resources :poems do
    resources :comments, module: :poems
  end

  resources :forums do
    resources :comments, module: :forums
  end

  root 'initial_page#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

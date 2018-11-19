Rails.application.routes.draw do
  resources :texts
  get 'initial_page/index'

  resources :texts

  root 'initial_page#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

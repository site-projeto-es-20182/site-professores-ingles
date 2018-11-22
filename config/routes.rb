Rails.application.routes.draw do
  resources :texts do
    resources :comments, module: :texts
  end

  resources :poems do
    resources :comments, module: :poems
  end

  root 'initial_page#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

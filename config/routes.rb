Rails.application.routes.draw do
  get 'comments/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :notes
  resources :categories, only: [:index, :show]
  
end

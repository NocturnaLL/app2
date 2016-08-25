Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  #resources :notes
  resources :home, only: [:index]
  get 'new/note', to: 'notes#new'
  get 'notes', to: 'notes#index'
  get 'notes/:id', to: 'notes#show', as: "note"
  post 'notes', to: 'notes#create'
  get 'notes/:id/edit', to: 'notes#edit', as: "edit_note"
  put 'notes/:id', to: 'notes#update'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :toys
  get "overview", to: "main#overview"

  get "collections", to: "toys#index"

  get "new", to: "toys#new"
  post "create", to: "toys#create"
  get 'toys/:id', to: 'toys#show'
  get 'toys/edit/:id', to: 'toys#edit'
  get "toys/destroy/:id", to: 'toys#destroy'
  root to: "main#index"  
end

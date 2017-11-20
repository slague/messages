Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'messages#new'
  resources :messages, only: [:index, :new, :create]

  namespace :api do
    resources :messagess, only: [:index]
  end
end

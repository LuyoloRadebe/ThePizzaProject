Rails.application.routes.draw do
  devise_for :users
  
  root to: 'static#homepage'
  post 'static/form', to: 'static#new'
  post 'static/form', to: 'static#new'
  
  resources :trello_boards
  post 'trello_board/webhook', to: 'trello_board#webhook'
  #resources :webhooks, only [:create]
end


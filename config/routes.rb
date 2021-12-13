Rails.application.routes.draw do
  devise_for :users
  
  root to: 'static#homepage'
  get 'static/form', to: 'static#new'


  resources :trello_boards
  get 'static/reset', to: 'trello_boards#reset'
  post 'static/form', to: 'trello_boards#setup'
  post 'trello_board/webhook', to: 'trello_board#webhook'
  #resources :webhooks, only [:create]
end


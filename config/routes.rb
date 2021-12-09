Rails.application.routes.draw do
  root to: 'static#homepage'
  resources :trello_boards
  post 'trello_board/webhook', to: 'trello_board#webhook'
  #resources :webhooks, only [:create]
end


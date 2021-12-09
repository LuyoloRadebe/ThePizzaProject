Rails.application.routes.draw do
  root to: 'static#homepage'
  resources :trello_boards
end

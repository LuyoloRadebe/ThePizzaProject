class TrelloBoardsController < ApplicationController
  require 'rest-client'
  def index
    @trello_boards = TrelloBoard.new
    puts "#{@trello_boards.first.lists}"
  end

  def new
    @trello_boards = TrelloBoard.new
    render
  end

  def create   
    RestClient.post "https://api.trello.com/1/cards?name=#{params[:card_name]}&idList=#{params[:list_id]}&key=#{ENV['TRELLO_API_KEY']}&token=#{ENV['TRELLO_API_TOKEN']}", { accept: :json }
    redirect_to root_path
  end

  def webhook_create
    
    RestClient.post "https://api.trello.com/1/tokens/#{ENV['TRELLO_API_TOKEN']}/webhooks/?key=#{ENV['TRELLO_API_KEY']}", {
      accept: :json,
      description: "My first webhook",
      callbackURL: "https://cryptic-wave-79621.herokuapp.com/trello_board/webhook",
      idModel: "4d5ea62fd76aa1136000000c"}
  end

  def webhook_receive
    RestClient.get "https://api.trello.com/1/webhooks/{id}/{field}", {accept: :json}
  end
end
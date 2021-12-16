class TrelloBoardsController < ApplicationController
  require 'rest-client'
  require 'trello'

  
  def index
    #@trello_boards = TrelloBoard.new
    @trello_boards = Trello::Board.all
    #puts "#{@trello_boards.first.lists}"
  end

  def new

  end

  def setup
    puts "########TRELLO BOARD CONFIG###############"
    puts "params: params[:TRELLO_API_KEY] #{params[:TRELLO_API_KEY]}"
    puts "params: params[:TRELLO_API_TOKEN] #{params[:TRELLO_API_TOKEN]}"
    current_user.api_key = params[:TRELLO_API_KEY]
    current_user.api_token = params[:TRELLO_API_TOKEN]
    begin
      RestClient.get "https://api.trello.com/1/members/me?key=#{current_user.api_key}&token=#{current_user.api_token}", headers => { accept: :json }
    rescue RestClient::ExceptionWithResponse => e
      e.response 
    end
    current_user.save!
    puts headers
    # Trello.configure do |config|
    # Trello.configure do |config|
    #    config.developer_public_key = current_user.api_key
    #    config.member_token = current_user.api_token
    # end
    #@trello_boards = TrelloBoard.new
    #@trello_boards.board_id = Trello::Board.first.id
    # .client_id
    # .board_id
    # .list_id
    # t.bigint "user_id"
    # puts "#{@trello_boards.first.lists}"

  end

  def create   
    RestClient.post "https://api.trello.com/1/cards?name=#{params[:card_name]}&idList=#{params[:list_id]}&key=#{ENV['TRELLO_API_KEY']}&token=#{ENV['TRELLO_API_TOKEN']}", { accept: :json }
    redirect_to root_path
  end

  def reset
    current_user.api_key = nil
    current_user.api_token = nil
    current_user.save!
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
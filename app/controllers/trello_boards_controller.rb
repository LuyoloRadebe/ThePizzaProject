class TrelloBoardsController < ApplicationController
  require 'rest-client'
  def index
  end
  
  def new
    render
  end

  def create
    list_id = params[:new_card][:list_id]
    card_name = params[:new_card][:card_name]    
    RestClient.post "https://api.trello.com/1/cards?name=#{card_name}&idList=#{list_id}&key=#{ENV['TRELLO_API_KEY']}&token=#{ENV['TRELLO_API_TOKEN']}", { accept: :json }
    redirect_to root_path
  end
end
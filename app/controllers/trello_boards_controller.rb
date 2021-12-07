class TrelloBoardsController < ApplicationController
  require 'rest-client'

  def index
  end
  
  def new
    @submit = new_card_params()
    puts @submit
    render
  end

  def create
    @new_card = new_card_params()
    puts @submit
    puts @new_card
    #@card_name = "#{@request.my_unique_id} - #{@request.user.first_name} #{@request.user.last_name} - entrada #{Date.today.to_s(:long)}"
    #RestClient.post "https://api.trello.com/1/cards?name=#{card_name}&idList=60f98388864f8e839ed71b99&key=#{ENV['PUBLIC_TRELLO_KEY']}&token=#{ENV['MEMBER_TRELLO_TOKEN']}", { accept: :json }
  end

  def new_card_params
    params.fetch(:list_id,{})
  end
end
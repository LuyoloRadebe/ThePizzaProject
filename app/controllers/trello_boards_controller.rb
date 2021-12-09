class TrelloBoardsController < ApplicationController
  require 'rest-client'
  #before_action :new_card_params, only: [:new, :create]

  def index
  end
  
  def new
    @list_id = params.fetch(:new,{})
    puts new_card_params
    render
  end

  def create
    @card_name = params.merge(params.fetch(:,{}))
    #RestClient.post "https://api.trello.com/1/cards?name=#{card_name}&idList=60f98388864f8e839ed71b99&key=#{ENV['PUBLIC_TRELLO_KEY']}&token=#{ENV['MEMBER_TRELLO_TOKEN']}", { accept: :json }
  end

  def new_card_params
    #params.fetch(:list_id,{})
  end
end
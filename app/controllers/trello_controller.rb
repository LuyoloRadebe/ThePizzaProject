class TrelloController < ApplicationController

  require 'rest-client'
  def get_info
    @boards = Trello::Board.all
  end

  def create
    
  end
end
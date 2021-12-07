class StaticController < ApplicationController

  require 'rest-client'

  def homepage
  end

  def get_info
    @boards = Trello::Board.all
  end

  def create
    
  end
end
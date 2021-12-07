class StaticController < ApplicationController
  def homepage
    @boards = Trello::Board.all
  end
end
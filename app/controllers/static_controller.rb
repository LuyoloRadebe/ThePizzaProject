class StaticController < ApplicationController
  def homepage
    @boards = Trello::Board.all
  end

  def hook
    HTTParty.post("https://api.trello.com/1/tokens/
      #{ENV['TRELLO_OAUTH_TOKEN']}/webhooks/?key=
      #{ENV["TRELLO_KEY"]}",
      :query => { description: "test", callbackURL: 
      CALLBACK_URL, idModel: trello_board_id },
      :headers => { "Content-Type" => "application/x-www-
      form-urlencoded"})      
  end
end
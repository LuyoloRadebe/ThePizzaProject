class StaticController < ApplicationController
  def homepage
  end

  def new
    @trello_boards = TrelloBoard.new
    # Trello.configure do |config|
    #    config.developer_public_key = params[:api_init][:TRELLO_API_KEY]
    #    config.member_token = params[:api_init][:TRELLO_API_TOKEN]
    # end
  end
end
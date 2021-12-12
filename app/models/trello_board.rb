class TrelloBoard < ApplicationRecord
  before_action :api_init, only: [:new_client]

  def new_client
    @trello_boards = TrelloBoard.new        
  end 



  def api_init
    Trello.configure do |config|
      config.developer_public_key = ENV['TRELLO_API_KEY']
      config.member_token = ENV['TRELLO_API_TOKEN']
    end
  end
end

class AddBoardIdToTrelloBoards < ActiveRecord::Migration[6.0]
  def change
    def change
      add_column :trello_boards, :api_token, :string
      add_column :trello_boards, :api_key, :string
      add_column :trello_boards, :client_id, :string
      add_column :trello_boards, :board_id, :string
      add_column :trello_boards, :list_id, :string
    end
  end
end

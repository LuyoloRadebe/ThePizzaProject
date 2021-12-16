class CreateTrelloBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :trello_boards do |t|
      
      t.timestamps
    end
  end
end

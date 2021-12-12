class AddApiTokensToUsers < ActiveRecord::Migration[6.0]
  def change
    def change
      add_column :users, :api_token, :string
      add_column :users, :api_key, :string
      add_column :users, :client_id, :string
    end
  end
end

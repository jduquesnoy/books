class AddUsernameToUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :nickname
    add_column :users, :username, :string
  end
end

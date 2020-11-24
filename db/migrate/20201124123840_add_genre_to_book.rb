class AddGenreToBook < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :type
    add_column :books, :genre, :string
  end
end

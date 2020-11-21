class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.string :author
      t.string :collection
      t.string :editor
      t.string :type
      t.string :isbn
      t.string :state
      t.boolean :deposit
      t.boolean :wish

      t.timestamps
    end
  end
end

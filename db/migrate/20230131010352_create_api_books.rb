# typed: true
class CreateApiBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :api_books do |t|
      t.string :title
      t.string :author
      t.integer :genre_id
      t.integer :shelf_id
      t.string :isbn
      t.string :scanned_identifier

      t.timestamps
    end
  end
end

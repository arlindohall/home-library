class AddDescriptionAndLinksToApiBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :api_books, :description, :string
    add_column :api_books, :google_books_link, :string
    add_column :api_books, :google_books_api_link, :string
  end
end

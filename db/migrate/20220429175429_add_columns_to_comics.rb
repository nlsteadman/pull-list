class AddColumnsToComics < ActiveRecord::Migration[6.1]
  def change
    add_column :comics, :genre, :string
    add_column :comics, :image_url, :string
    add_column :comics, :price, :integer
    add_column :comics, :rating, :string
  end
end

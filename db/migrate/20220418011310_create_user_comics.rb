class CreateUserComics < ActiveRecord::Migration[6.1]
  def change
    create_table :user_comics do |t|
      t.string :quantity
      t.integer :user_id
      t.integer :comic_id
      t.timestamps
    end
  end
end

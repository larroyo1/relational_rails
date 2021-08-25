class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :album_count
      t.boolean :grammy_winner

      t.timestamps
    end
  end
end

class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :actor_id
      t.integer :year
      t.boolean :academy_award

      t.timestamps
    end
  end
end

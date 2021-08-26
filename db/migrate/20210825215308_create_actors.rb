class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :year_first_film
      t.boolean :academy_award

      t.timestamps
    end
  end
end

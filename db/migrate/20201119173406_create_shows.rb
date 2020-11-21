class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.references :producer, null: false, foreign_key: true
      t.string :name
      t.string :about
      t.boolean :is_irl
      t.boolean :is_virtual
      t.string :venue
      t.string :city

      t.timestamps
    end
  end
end

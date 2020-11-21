class CreateComedianGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :comedian_genres do |t|
      t.references :comedian, null:false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end

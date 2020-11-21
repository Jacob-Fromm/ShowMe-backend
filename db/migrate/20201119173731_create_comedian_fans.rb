class CreateComedianFans < ActiveRecord::Migration[6.0]
  def change
    create_table :comedian_fans do |t|
      t.references :fan, null: false, foreign_key: true
      t.references :comedian, null: false, foreign_key: true

      t.timestamps
    end
  end
end

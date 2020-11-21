class CreateLineups < ActiveRecord::Migration[6.0]
  def change
    create_table :lineups do |t|
      t.datetime :date
      t.references :comedian, null: false, foreign_key: true
      t.references :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end

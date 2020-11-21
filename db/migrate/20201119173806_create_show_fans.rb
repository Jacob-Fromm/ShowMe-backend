class CreateShowFans < ActiveRecord::Migration[6.0]
  def change
    create_table :show_fans do |t|
      t.references :fan, null: false, foreign_key: true
      t.references :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end

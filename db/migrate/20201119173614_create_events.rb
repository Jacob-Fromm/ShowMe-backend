class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :comedian, null: true, foreign_key: true
      t.string :date_time
      t.boolean :is_irl
      t.boolean :is_virtual
      t.string :venue
      t.string :address
      t.string :phone_number
      t.string :ticket_link
      t.string :venue_website
      t.integer :ticket_price

      t.timestamps
    end
  end
end

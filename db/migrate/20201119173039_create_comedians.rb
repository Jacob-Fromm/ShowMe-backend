class CreateComedians < ActiveRecord::Migration[6.0]
  def change
    create_table :comedians do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :city
      t.string :personal_website
      t.string :headshot

      t.timestamps
    end
  end
end

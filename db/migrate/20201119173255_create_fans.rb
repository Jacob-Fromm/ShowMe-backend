class CreateFans < ActiveRecord::Migration[6.0]
  def change
    create_table :fans do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :city

      t.timestamps
    end
  end
end

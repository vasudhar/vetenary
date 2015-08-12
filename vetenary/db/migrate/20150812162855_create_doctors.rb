class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.text :address
      t.string :degreefrom
      t.integer :experience

      t.timestamps null: false
    end
  end
end

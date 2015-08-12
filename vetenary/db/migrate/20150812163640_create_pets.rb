class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :customer_id
      t.integer :pdoctor_id
	  t.string :next_visit

      t.timestamps null: false
    end
  end
end

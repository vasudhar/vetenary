class CreatePdoctors < ActiveRecord::Migration
  def change
    create_table :pdoctors do |t|
      t.string :nameofpet
      t.string :type
      t.string :breed
      t.integer :age
      t.integer :weight
      t.datetime :dateofvist

      t.timestamps null: false
    end
  end
end

class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :pname
      t.datetime :dateofnextapp
      t.string :reason

      t.timestamps null: false
    end
  end
end

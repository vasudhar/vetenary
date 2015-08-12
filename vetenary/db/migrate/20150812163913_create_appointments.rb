class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :dateofvisit
      t.integer :pet_id
      t.integer :doctor_id
      t.string :reason

      t.timestamps null: false
    end
  end
end

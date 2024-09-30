class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.references "doctor"
      t.references "patient"
      t.integer "appointment_no"

      t.timestamps
    end
  end
end

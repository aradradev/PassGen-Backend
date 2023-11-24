class CreateEmbassyAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :embassy_appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :embassy, null: false, foreign_key: true
      t.datetime :appointment_date

      t.timestamps
    end
  end
end

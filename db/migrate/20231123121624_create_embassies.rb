class CreateEmbassies < ActiveRecord::Migration[7.0]
  def change
    create_table :embassies do |t|
      t.string :country
      t.string :name
      t.string :location
      t.datetime :appointment_date

      t.timestamps
    end
  end
end

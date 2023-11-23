class CreateGuineas < ActiveRecord::Migration[7.0]
  def change
    create_table :guineas do |t|
      t.references :user, null: false, foreign_key: true
      t.string :identification_document
      t.string :travel_itinerary

      t.timestamps
    end
  end
end

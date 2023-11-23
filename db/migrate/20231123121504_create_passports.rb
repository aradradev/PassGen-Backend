class CreatePassports < ActiveRecord::Migration[7.0]
  def change
    create_table :passports do |t|
      t.references :user, null: false, foreign_key: true
      t.string :passport_number
      t.date :issue_date
      t.date :expiration_date

      t.timestamps
    end
  end
end

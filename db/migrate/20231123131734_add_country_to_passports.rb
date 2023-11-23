class AddCountryToPassports < ActiveRecord::Migration[7.0]
  def change
    add_column :passports, :country, :string
  end
end

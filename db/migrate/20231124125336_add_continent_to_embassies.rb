class AddContinentToEmbassies < ActiveRecord::Migration[7.0]
  def change
    add_column :embassies, :continent, :string
  end
end

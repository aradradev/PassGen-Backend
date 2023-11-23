class AddForeignKeyToPassports < ActiveRecord::Migration[7.0]
  def change
     add_foreign_key :passports, :users, name: 'fk_passports_users', on_delete: :cascade
  end
end

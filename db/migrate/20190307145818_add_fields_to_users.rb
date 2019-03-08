class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nickname, :string
    add_column :users, :birthdate, :datetime
    add_column :users, :style, :string
    add_column :users, :level, :string
  end
end
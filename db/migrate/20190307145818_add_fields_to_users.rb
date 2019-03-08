class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
  	#Dancer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nickname, :string
    add_column :users, :birthdate, :datetime
    add_column :users, :style, :string
    add_column :users, :level, :string
    #Admin
    add_column :users, :name, :string
    add_column :users, :description, :text
    add_column :users, :contact_mail, :string
    add_column :users, :social, :string
    add_column :users, :website, :string
  end
end

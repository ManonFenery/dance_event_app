class AddFieldsToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :name, :string
    add_column :admins, :description, :text
    add_column :admins, :contact_mail, :string
    add_column :admins, :social, :string
    add_column :admins, :website, :string
  end
end

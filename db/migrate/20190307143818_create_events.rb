class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location_name
      t.string :location_address
      t.string :location_city
      t.string :location_zipcode
      t.string :location_country
      t.datetime :start_date
      t.integer :price
      t.string :styles, array: true, default: []
      t.string :category
      t.string :class_level
      t.string :class_teacher
      t.belongs_to :admin, index: true
      t.timestamps
    end
  end
end

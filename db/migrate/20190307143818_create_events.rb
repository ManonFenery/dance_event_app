class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :start_date
      t.integer :duration
      t.integer :price
      t.string :styles, array: true, default: []
      t.string :category
      t.belongs_to :admin, index: true
      t.timestamps
    end
  end
end

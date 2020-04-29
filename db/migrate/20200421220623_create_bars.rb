class CreateBars < ActiveRecord::Migration[6.0]
  def change
    create_table :bars do |t|
      t.string :state
      t.string :city
      t.string :name
      t.integer :opened
      t.string :overview
      t.string :image
      t.float  :latitude
      t.float :longitude
      t.timestamps
    end
  end
end

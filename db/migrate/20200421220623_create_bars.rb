class CreateBars < ActiveRecord::Migration[6.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :opened
      t.string :overview
      t.string :image

      t.timestamps
    end
  end
end

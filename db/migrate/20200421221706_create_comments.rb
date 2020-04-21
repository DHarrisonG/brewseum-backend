class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :bar, null: false, foreign_key: true
      t.string :comment
      t.string :likes

      t.timestamps
    end
  end
end

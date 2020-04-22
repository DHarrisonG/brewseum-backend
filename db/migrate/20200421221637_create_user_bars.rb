class CreateUserBars < ActiveRecord::Migration[6.0]
  def change
    create_table :user_bars do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :bar, null: false, foreign_key: true

      t.timestamps
    end
  end
end

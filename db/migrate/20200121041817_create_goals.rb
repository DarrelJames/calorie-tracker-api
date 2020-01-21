class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :carbs, default: 0
      t.integer :fat, default: 0
      t.integer :protein, default: 0
      t.integer :calories, default: 0
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

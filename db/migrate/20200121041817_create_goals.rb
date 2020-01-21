class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :carbs
      t.integer :fat
      t.integer :protein
      t.integer :calories
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

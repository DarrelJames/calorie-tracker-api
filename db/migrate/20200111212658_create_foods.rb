class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.float :fat
      t.float :protein
      t.float :carbs
      t.float :calories
      t.string :name
      t.timestamps
    end
  end
end

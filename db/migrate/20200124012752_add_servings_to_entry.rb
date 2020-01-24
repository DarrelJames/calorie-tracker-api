class AddServingsToEntry < ActiveRecord::Migration[6.0]
  def change
    add_column :entries, :servings, :float
  end
end

class AddServingsToEntry < ActiveRecord::Migration[6.0]
  def change
    add_column :entries, :servings, :float, default: 1
  end
end

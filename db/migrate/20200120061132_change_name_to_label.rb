class ChangeNameToLabel < ActiveRecord::Migration[6.0]
  def change
    rename_column :foods, :name, :label 
  end
end

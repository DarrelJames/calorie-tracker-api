class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :category
      t.belongs_to :log

      t.timestamps
    end
  end
end

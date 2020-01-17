class CreateEntriesFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :entries_foods do |t|
      t.belongs_to :entry, null: false, foreign_key: true
      t.belongs_to :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end

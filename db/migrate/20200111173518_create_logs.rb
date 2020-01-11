class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.string :date
      t.belongs_to :user
      t.timestamps
    end
  end
end

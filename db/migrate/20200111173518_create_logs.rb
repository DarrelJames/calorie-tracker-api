class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.string :date, default: Time.new.strftime('%m-%d-%Y')
      t.belongs_to :user
      t.timestamps
    end
  end
end

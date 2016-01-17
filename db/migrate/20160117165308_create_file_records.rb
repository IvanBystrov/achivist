class CreateFileRecords < ActiveRecord::Migration
  def change
    create_table :file_records do |t|
      t.text :description
      t.string :attachment

      t.timestamps null: false
    end
  end
end

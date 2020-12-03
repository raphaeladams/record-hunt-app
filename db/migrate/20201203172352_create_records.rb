class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.integer :price

      t.timestamps
    end
  end
end

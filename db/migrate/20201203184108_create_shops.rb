class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :city
      t.string :address

      t.timestamps
    end

    add_index :shops, [:city, :address], unique: true
  end
end

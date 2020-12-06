class AddShopIdToRecords < ActiveRecord::Migration[6.0]
  def change
    add_reference :records, :shop, index: true
    add_foreign_key :records, :shops
  end
end

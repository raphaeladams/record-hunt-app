require_relative "20201204164040_add_shop_id_to_records"
require_relative "20201205034020_set_shop_id_null_false_for_records"

class FixupRecordsReferences < ActiveRecord::Migration[6.0]
  def change
    revert SetShopIdNullFalseForRecords
    revert AddShopIdToRecords
  
    add_reference(:records, :shop, null: false, foreign_key: true)
  end
end

class SetShopIdNullFalseForRecords < ActiveRecord::Migration[6.0]
  def change
    change_column_null :records, :shop_id, false
  end
end

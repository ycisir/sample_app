class CreateJoinTableResellersManufacturers < ActiveRecord::Migration[8.0]
  def change
    create_join_table :resellers, :manufacturers do |t|
      # t.index [:reseller_id, :manufacturer_id]
      # t.index [:manufacturer_id, :reseller_id]
    end
  end
end

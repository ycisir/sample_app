class AddManufacturerIdToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :manufacturer_id, :integer
  end
end

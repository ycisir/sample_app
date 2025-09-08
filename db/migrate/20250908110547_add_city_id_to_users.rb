class AddCityIdToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :city_id, :integer
  end
end

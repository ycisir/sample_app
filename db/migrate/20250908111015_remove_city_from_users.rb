class RemoveCityFromUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :city
  end
end

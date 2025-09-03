class AddTimestampToUsers < ActiveRecord::Migration[8.0]
  def change
    add_timestamps :users
  end
end

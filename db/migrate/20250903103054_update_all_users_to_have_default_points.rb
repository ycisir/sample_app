class UpdateAllUsersToHaveDefaultPoints < ActiveRecord::Migration[8.0]
  def up
    add_column :users, :points, :integer
    User.update_all(points: 100)
  end

  def down
    remove_column :users, :points
    # or
    # User.update_all(points: 0)
  end
end

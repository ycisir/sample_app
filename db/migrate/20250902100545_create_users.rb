class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.integer :age
    end
  end
end

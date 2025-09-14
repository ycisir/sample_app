class CreateResellers < ActiveRecord::Migration[8.0]
  def change
    create_table :resellers do |t|
      t.string :name
    end
  end
end

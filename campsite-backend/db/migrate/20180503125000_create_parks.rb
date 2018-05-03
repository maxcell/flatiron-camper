class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.integer :max_capacity
      t.boolean :has_showers
      t.boolean :cars_allowed

      t.timestamps
    end
  end
end

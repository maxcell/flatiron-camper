class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|

      t.string :camper_name
      t.integer :park_id

      t.timestamps
    end
  end
end

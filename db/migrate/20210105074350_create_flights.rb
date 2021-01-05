class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :flight_no
      t.date :date
      t.string :to
      t.string :from
      t.integer :airplane_id

      t.timestamps
    end
  end
end

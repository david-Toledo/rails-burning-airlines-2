class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :booking_code

      t.timestamps
    end
  end
end

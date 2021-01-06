class AddSeatNoToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :seat_no, :string
  end
end

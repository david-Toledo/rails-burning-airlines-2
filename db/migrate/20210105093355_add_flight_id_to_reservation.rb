class AddFlightIdToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :flight_id, :integer
  end
end

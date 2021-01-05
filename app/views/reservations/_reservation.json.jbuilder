json.extract! reservation, :id, :booking_code, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)

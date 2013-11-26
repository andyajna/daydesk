json.array!(@bookings) do |booking|
  json.extract! booking, 
  json.url booking_url(booking, format: :json)
end

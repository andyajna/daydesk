json.array!(@suppliers) do |supplier|
  json.extract! supplier, :name, :address1, :address2, :suburb, :postcode, :state, :contactname, :contactphone, :contactemail, :paypal, :blurb, :type, :pic1, :pic2, :pic3
  json.url supplier_url(supplier, format: :json)
end

json.array!(@services) do |service|
  json.extract! service, :supplier_id, :desktype, :deskrate, :wifi, :wifilimit, :printing, :printingdesc, :sendfax, :receivefax
  json.url service_url(service, format: :json)
end

json.array!(@subservices) do |subservice|
  json.extract! subservice, :id
  json.url subservice_url(subservice, format: :json)
end

json.array!(@memos) do |memo|
  json.extract! memo, :id, :coffee_shop, :kind_of_coffee, :origin, :taste, :aroma, :mood, :barrista
  json.url memo_url(memo, format: :json)
end

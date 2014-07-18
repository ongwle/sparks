json.array!(@home_page_banners) do |home_page_banner|
  json.extract! home_page_banner, :id
  json.url home_page_banner_url(home_page_banner, format: :json)
end

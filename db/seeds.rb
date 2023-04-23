start_of_month = Date.today.beginning_of_month
end_of_month = Date.today.end_of_month

original_url = Faker::Internet.url
(start_of_month..end_of_month).each do |date|
  Url.create!(original_url: original_url, created_at: date, clicked: rand(100))
end
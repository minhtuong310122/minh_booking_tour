TITLE = ["Đà Nẵng - Hội An", "Sài GÒn - Vũng Tàu", "Huế 2 ngày 1 đêm"]
PRICE = [2000000, 3500000, 100000]
DES = ["Lorem ipsum dolor sit ametdsdaad adipisicing elit. Sequi perferendis molestiae non nemo doloribus."]

50.times do |n|
  Tour.create! title: "#{ TITLE.sample } #{ n+1 }", description: "#{ DES.sample }", price: PRICE.sample, tour_type: "normal_tour", start_date: "29/09/1999", end_date: "30/10/1999", limit_member: n, image: File.open(Rails.root.join("db/h.jpg"))
end

50.times do |n|
  Tour.create! title: "#{ TITLE.sample } #{ n+1 }", description: "#{ DES.sample }", price: PRICE.sample, tour_type: "fixed_tour", time_in_day: "Chủ nhật hàng ngày", limit_member: n, image: File.open(Rails.root.join("db/h.jpg"))
end

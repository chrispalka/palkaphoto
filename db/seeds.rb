9.times do |portfolio|
  Portfolio.create!(
    title: "My Photo #{portfolio}",
    body: "This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body. This is my photo body.",
    image: "https://via.placeholder.com/350x200"
  )
end

puts "9 Portfolio items created"

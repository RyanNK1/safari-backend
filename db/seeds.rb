# require 'faker'
# # Create seed data for Activities table
# 10.times do
#     Activity.create(
#       hiking: Faker::Boolean.boolean,
#       sight_seeing: Faker::Boolean.boolean,
#       beach: Faker::Boolean.boolean,
#       boat_safari: Faker::Boolean.boolean,
#       water_sports: Faker::Boolean.boolean,
#       park_tour: Faker::Boolean.boolean,
#       cultural_tour: Faker::Boolean.boolean,
#       city_tour: Faker::Boolean.boolean,
#       kid_activities: Faker::Boolean.boolean
#     )
#   end
  
  
  
#   # Create seed data for Bookings table
#   10.times do
#     Booking.create(
#       package_id: Faker::Number.between(from: 1, to: 10),
#       days_booked: Faker::Number.between(from: 3, to: 14),
#       number_of_people: Faker::Number.between(from: 1, to: 5)
#     )
#   end
  
#   # Create seed data for Payments table
#   10.times do
#     Payment.create(
#       package_id: Faker::Number.between(from: 1, to: 10),
#       booking_id: Faker::Number.between(from: 1, to: 10),
#       card_number: Faker::Number.number(digits: 16),
#       expiration_date: Faker::Date.forward(days: 365),
#       cvc: Faker::Number.number(digits: 3),
#       date_paid: Faker::Date.between(from: 1.year.ago, to: Date.today),
#       total_amount: Faker::Number.between(from: 500, to: 5000)
#     )
#   end
#   packages_data = [
#     {
#       activity_id: 1,
#       package_name: "Orchard Road",
#       recommended_hotel: "Yotel Singapore",
#       location: "Singapore",
#       image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/06/75/63/yotel-singapore.jpg?w=700&h=-1&s=1",
#       price_per_day: 1500,
#       description: "Best described as a microcosm of modern Asia, Singapore is a melting pot of culture and history, and an extravaganza of culinary delights. Officially known as the Republic of Singapore, it is both a city and a country located in Southeast Asia.",
#       maximum_no_of_people: 10
#     },
#     {
#       activity_id: 2,
#       package_name: "Bangkok",
#       recommended_hotel: "Folk Poshtel",
#       location: "Thailand",
#       image: "https://pix10.agoda.net/hotelImages/5498483/-1/c9f2bc57a49f88f87c630573f698398c.jpg?ca=7&ce=1&s=414x232&isSkia=true",
#       price_per_day: 1200,
#       description: "The metropolis is a bustling, crowded city, with temples, factories, shops, and homes juxtaposed along its roads and canals. It is also a major tourist destination, noted for bountiful cultural attractions and a nightlife",
#       maximum_no_of_people: 8
#     },
#     {
#         activity_id: 3,
#         package_name: "Paris",
#         recommended_hotel: "Hotel F1",
#         location: "France",
#         image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_TCbkJIFkJuMmDSfYiuT9uUUyuvLQj_yyvA&
#         usqp=CAU",
#         price_per_day: 600,
#         description: "Its streets, squares, buildings, gardens, and monuments beckon tourists to return, and indeed, many do. Some of the most memorable things to do in Paris include visiting the Eiffel Tower, the Arc de Triomphe, and Notre Dame Cathedral",
#         maximum_no_of_people: 8
#       },
#       {
#         activity_id: 4,
#         package_name: "Wellington",
#         recommended_hotel: "Novotel Wellington",
#         location: "New zealand",
#         image: "https://cf.bstatic.com/xdata/images/hotel/max1280x900/297647806.jpg?k=89fdd6c5faa4ca9cc74ef3e113c9da34355ee9a85761650fe20d1a9cde9c70b7&o=&hp=1",
#         price_per_day: 600,
#         description: "Wellington is New Zealand's centre of government and the world's southernmost capital city. Wellington is also the country's cultural capital and the third most populous urban area in New Zealand. The city is home to: many museums, including Te Papa Tongarewa",
#         maximum_no_of_people: 8
#       },
#       {
#         activity_id: 5,
#         package_name: "Abuja",
#         recommended_hotel: "Transcorp Hilton",
#         location: "Nigeria",
#         image: "https://skift.com/wp-content/uploads/2021/07/transcorp-hilton-abuja-source-transcorp-hotels.jpg",
#         price_per_day: 600,
#         description: "It was created in 1976 to replace Lagos as the capital, and it officially became the capital of Nigeria in 1991. The city is known for its modern architectural designs and planned layout, and it is considered one of the few purpose-built capitals in Africa",
#         maximum_no_of_people: 8
#       },
#       {
#         activity_id: 6,
#         package_name: "Nyali, Mombasa",
#         recommended_hotel: "Nyali International Beach Hotel",
#         location: "Kenya",
#         image: "https://www.mamutravel.com/wp-content/uploads/2021/12/Nyali-international-Beach-Hotel.jpg",
#         price_per_day: 500,
#         description: "Nyali is a residential area and Sub-County within Mombasa City, located on the mainland north of Mombasa County. It is connected to Mombasa Island by the New Nyali Bridge. Nyali is known for its many high-class hotels and residential houses, modern standards, and long white sand beaches making it a popular destination for both local and foreign tourists.",
#         maximum_no_of_people: 7
#       },
#       {
#         activity_id: 7,
#         package_name: "Alexandria",
#         recommended_hotel: "Hilton Alexandria Green Plaza",
#         location: "Egypt",
#         image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2H8etfRDKsTGBHXUy8HnGW-gJUjfgPBHqsw&usqp=CAU",
#         price_per_day: 900,
#         description: "One of the great centers of learning in the ancient world and famous for its beautiful harbor, Alexandria has seduced poets, novelists, and travelers for centuries. With its unique blend of European and Middle Eastern culture, there's nowhere quite like Alexandria.",
#         maximum_no_of_people: 7
#       },
#       {
#         activity_id: 8,
#         package_name: "Lima",
#         recommended_hotel: "Hilton Lima Miraflores",
#         location: "Peru",
#         image: "https://c.otcdn.com/imglib/hotelfotos/8/288/hotel-hilton-lima-miraflores-015.jpg",
#         price_per_day: 700,
#         description: "Lima is known for its award-winning Peruvian gastronomy, two miles of parks along the Pacific coast, museums and gorgeous colonial Plaza de Armas. Being the capital, it is the home to the government buildings and palaces as well.",
#         maximum_no_of_people: 9
#       },
#       {
#         activity_id: 9,
#         package_name: "Oistins",
#         recommended_hotel: "Butterfly Beach Hotel",
#         location: "Barbados",
#         image: "https://www.butterflybeach.com/wp-content/uploads/2019/10/1-Aerial-North-East-Close.jpg",
#         price_per_day: 1078,
#         description: "Oistins is a town located on the southern coast of Barbados. It is famous for its Friday night Fish Fry, a street party where locals and visitors gather to eat freshly caught fish and seafood, listen to music, and socialize. Oistins is also home to a bustling fishing market, where you can buy fresh seafood, and a number of beaches such as Miami Beach and Enterprise Beach, popular for swimming and surfing. Additionally, the town has a variety of shops and restaurants, making it a popular tourist destination.",
#         maximum_no_of_people: 11
#       },
#       {
#         activity_id: 10,
#         package_name: "Dublin",
#         recommended_hotel: "Hilton Honors",
#         location: "Ireland",
#         image: "https://media-cdn.tripadvisor.com/media/photo-s/26/73/a4/dc/exterior.jpg",
#         price_per_day: 1350,
#         description: "City by the sea. Dublin is a resoundingly social place, packed with culture, creativity and craic (fun).",
#         maximum_no_of_people: 7
#       }
# ]
# packages_data.each do |package|
#   Package.create!(package)
# end
#   # Creat seed data for Users table
#   10.times do
#     User.create(
#       first_name: Faker::Name.first_name,
#       last_name: Faker::Name.last_name,
#       username: Faker::Internet.unique.username(specifier: 5..15),
#       dob: Faker::Date.between(from: 50.years.ago, to: 18.years.ago).strftime("%Y-%m-%d"),
#       email: Faker::Internet.unique.email,
#       password: Faker::Internet.password(min_length: 8),
#       confirm_password: Faker::Internet.password(min_length: 8)
#     )
#   end
require 'faker'


10.times do
  Activity.create(
    hiking: Faker::Boolean.boolean,
    sight_seeing: Faker::Boolean.boolean,
    beach: Faker::Boolean.boolean,
    boat_safari: Faker::Boolean.boolean,
    water_sports: Faker::Boolean.boolean,
    park_tour: Faker::Boolean.boolean,
    cultural_tour: Faker::Boolean.boolean,
    city_tour: Faker::Boolean.boolean,
    kid_activities: Faker::Boolean.boolean
  )
end

# Create seed data for Users table
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.unique.username(specifier: 5..15),
    dob: Faker::Date.between(from: 50.years.ago, to: 18.years.ago).strftime("%Y-%m-%d"),
    email: Faker::Internet.unique.email,
    password: Faker::Internet.password(min_length: 8),
    confirm_password: Faker::Internet.password(min_length: 8)
  )
end



packages_data = [
  {
          activity_id: 1,
          package_name: "Orchard Road",
          recommended_hotel: "Yotel Singapore",
          location: "Singapore",
          image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/06/75/63/yotel-singapore.jpg?w=700&h=-1&s=1",
          price_per_day: 1500,
          description: "Best described as a microcosm of modern Asia, Singapore is a melting pot of culture and history, and an extravaganza of culinary delights. Officially known as the Republic of Singapore, it is both a city and a country located in Southeast Asia.",
          maximum_no_of_people: 10
        },
        {
          activity_id: 2,
          package_name: "Bangkok",
          recommended_hotel: "Folk Poshtel",
          location: "Thailand",
          image: "https://pix10.agoda.net/hotelImages/5498483/-1/c9f2bc57a49f88f87c630573f698398c.jpg?ca=7&ce=1&s=414x232&isSkia=true",
          price_per_day: 1200,
          description: "The metropolis is a bustling, crowded city, with temples, factories, shops, and homes juxtaposed along its roads and canals. It is also a major tourist destination, noted for bountiful cultural attractions and a nightlife",
          maximum_no_of_people: 8
        },
        {
            activity_id: 3,
            package_name: "Paris",
            recommended_hotel: "Hotel F1",
            location: "France",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_TCbkJIFkJuMmDSfYiuT9uUUyuvLQj_yyvA&
            usqp=CAU",
            price_per_day: 600,
            description: "Its streets, squares, buildings, gardens, and monuments beckon tourists to return, and indeed, many do. Some of the most memorable things to do in Paris include visiting the Eiffel Tower, the Arc de Triomphe, and Notre Dame Cathedral",
            maximum_no_of_people: 8
          },
          {
            activity_id: 4,
            package_name: "Wellington",
            recommended_hotel: "Novotel Wellington",
            location: "New zealand",
            image: "https://cf.bstatic.com/xdata/images/hotel/max1280x900/297647806.jpg?k=89fdd6c5faa4ca9cc74ef3e113c9da34355ee9a85761650fe20d1a9cde9c70b7&o=&hp=1",
            price_per_day: 600,
            description: "Wellington is New Zealand's centre of government and the world's southernmost capital city. Wellington is also the country's cultural capital and the third most populous urban area in New Zealand. The city is home to: many museums, including Te Papa Tongarewa",
            maximum_no_of_people: 8
          },
          {
            activity_id: 5,
            package_name: "Abuja",
            recommended_hotel: "Transcorp Hilton",
            location: "Nigeria",
            image: "https://skift.com/wp-content/uploads/2021/07/transcorp-hilton-abuja-source-transcorp-hotels.jpg",
            price_per_day: 600,
            description: "It was created in 1976 to replace Lagos as the capital, and it officially became the capital of Nigeria in 1991. The city is known for its modern architectural designs and planned layout, and it is considered one of the few purpose-built capitals in Africa",
            maximum_no_of_people: 8
          },
          {
            activity_id: 6,
            package_name: "Nyali, Mombasa",
            recommended_hotel: "Nyali International Beach Hotel",
            location: "Kenya",
            image: "https://www.mamutravel.com/wp-content/uploads/2021/12/Nyali-international-Beach-Hotel.jpg",
            price_per_day: 500,
            description: "Nyali is a residential area and Sub-County within Mombasa City, located on the mainland north of Mombasa County. It is connected to Mombasa Island by the New Nyali Bridge. Nyali is known for its many high-class hotels and residential houses, modern standards, and long white sand beaches making it a popular destination for both local and foreign tourists.",
            maximum_no_of_people: 7
          },
          {
            activity_id: 7,
            package_name: "Alexandria",
            recommended_hotel: "Hilton Alexandria Green Plaza",
            location: "Egypt",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2H8etfRDKsTGBHXUy8HnGW-gJUjfgPBHqsw&usqp=CAU",
            price_per_day: 900,
            description: "One of the great centers of learning in the ancient world and famous for its beautiful harbor, Alexandria has seduced poets, novelists, and travelers for centuries. With its unique blend of European and Middle Eastern culture, there's nowhere quite like Alexandria.",
            maximum_no_of_people: 7
          },
          {
            activity_id: 8,
            package_name: "Lima",
            recommended_hotel: "Hilton Lima Miraflores",
            location: "Peru",
            image: "https://c.otcdn.com/imglib/hotelfotos/8/288/hotel-hilton-lima-miraflores-015.jpg",
            price_per_day: 700,
            description: "Lima is known for its award-winning Peruvian gastronomy, two miles of parks along the Pacific coast, museums and gorgeous colonial Plaza de Armas. Being the capital, it is the home to the government buildings and palaces as well.",
            maximum_no_of_people: 9
          },
          {
            activity_id: 9,
            package_name: "Oistins",
            recommended_hotel: "Butterfly Beach Hotel",
            location: "Barbados",
            image: "https://www.butterflybeach.com/wp-content/uploads/2019/10/1-Aerial-North-East-Close.jpg",
            price_per_day: 1078,
            description: "Oistins is a town located on the southern coast of Barbados. It is famous for its Friday night Fish Fry, a street party where locals and visitors gather to eat freshly caught fish and seafood, listen to music, and socialize. Oistins is also home to a bustling fishing market, where you can buy fresh seafood, and a number of beaches such as Miami Beach and Enterprise Beach, popular for swimming and surfing. Additionally, the town has a variety of shops and restaurants, making it a popular tourist destination.",
            maximum_no_of_people: 11
          },
          {
            activity_id: 10,
            package_name: "Dublin",
            recommended_hotel: "Hilton Honors",
            location: "Ireland",
            image: "https://media-cdn.tripadvisor.com/media/photo-s/26/73/a4/dc/exterior.jpg",
            price_per_day: 1350,
            description: "City by the sea. Dublin is a resoundingly social place, packed with culture, creativity and craic (fun).",
            maximum_no_of_people: 7
          }
]

packages_data.each do |package|
  Package.create!(package)
end
# Create seed data for Bookings table
10.times do
  Booking.create(
    package_id: Faker::Number.between(from: 1, to: 10),
    days_booked: Faker::Number.between(from: 3, to: 14),
    number_of_people: Faker::Number.between(from: 1, to: 5)
  )
end

# Create seed data for Payments table
10.times do
  Payment.create(
    package_id: Faker::Number.between(from: 1, to: 10),
    booking_id: Faker::Number.between(from: 1, to: 10),
    card_number: Faker::Number.number(digits: 16),
    expiration_date: Faker::Date.forward(days: 365),
    cvc: Faker::Number.number(digits: 3),
    date_paid: Faker::Date.between(from: 1.year.ago, to: Date.today),
    total_amount: Faker::Number.between(from: 500, to: 5000)
  )
end
10.times do
  Admin.create(
    admin_name: Faker::Internet.unique.username(specifier: 5..15),
    email: Faker::Internet.unique.email,
    password: Faker::Internet.password(min_length: 8)
  )
end



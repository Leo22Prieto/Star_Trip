Trip.destroy_all
Company.destroy_all

puts 'Start the seeding'
spacex = Company.create!(name: 'SpaceX', email: 'spacex@gmail.com', description: 'Voyagez sans mourir', rating: 5)

pluton = Trip.create!(destination: 'Pluton', departure_date: '01-08-2022', arrival_date: '01-08-2023', number_of_passengers: 5, description: 'Profitez de la vue', price: 1000000, url_image: '#', company: spacex)

mercure = Trip.create!(destination: 'Mercure', departure_date: '24-12-2023', arrival_date: '28-02-2030', number_of_passengers: 15, description: 'Comme dans Seul sur Mars maais sur Mercure', price: 580000, url_image: '#', company: spacex)

venus = Trip.create!(destination: 'Venus', departure_date: '10-09-2024', arrival_date: '30-01-2025', number_of_passengers: 8, description: 'C\'est pas Venise', price: 290000, url_image: '#', company: spacex)

puts 'Finished'

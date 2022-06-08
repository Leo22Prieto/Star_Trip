Trip.destroy_all
Company.destroy_all

puts 'Start the seeding'
# Companies
spacex = Company.create!(name: 'SpaceX', email: 'contact@spacex.com', description: 'Discover the Solar system with comfort and style', rating: 5)
voyager = Company.create!(name: 'StarDust', email: 'contact@stardust.com', description: 'Dream big, travel far', rating: 5)

# Trips descriptions

PLUTO = "Pluto is a dwarf planet in the Kuiper Belt.Pluto – which is smaller than Earth’s Moon – has a heart-shaped glacier that’s the size of Texas and Oklahoma. This fascinating world has blue skies, spinning moons, mountains as high as the Rockies, and it snows – but the snow is red. Good to know: A year on Pluto is 248 Earth years. A day on Pluto lasts 153 hours, or about 6 Earth days. Pluto has 5 moons. The largest, Charon, is so big that Pluto and Charon orbit each other like a double planet. Since the temperatures on the surface of Pluto are about -238 C, please prepare warm clothes for your trip."
MERCURY = "The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter. Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system – that title belongs to nearby Venus, thanks to its dense atmosphere. Because of Mercury's elliptical – egg-shaped – orbit, and sluggish rotation, the Sun appears to rise briefly, set, and rise again from some parts of the planet's surface. The same thing happens in reverse at sunset."
VENUS = "This trip is for people looking for extreme experiences and adrenaline.Venus has a thick, toxic atmosphere filled with carbon dioxide and it’s perpetually shrouded in thick, yellowish clouds of sulfuric acid that trap heat, causing a runaway greenhouse effect. It’s the hottest planet in our solar system, even though Mercury is closer to the Sun. Surface temperatures on Venus are about 900 degrees Fahrenheit (475 degrees Celsius) – hot enough to melt lead. The surface is a rusty color and it’s peppered with intensely crunched mountains and thousands of large volcanoes. Scientists think it’s possible some volcanoes are still active. Venus has crushing air pressure at its surface – more than 90 times that of Earth – similar to the pressure you'd encounter a mile below the ocean on Earth. Venus rotates on its axis backward, compared to most of the other planets in the solar system. This means that, on Venus, the Sun rises in the west and sets in the east, opposite to what we experience on Earth."
MARS = "Since the upcoming of Elon Musk most of you have dreamt to join his trip tp Mars. No need for Elon now. You can experience Mars with SpaceX. ​Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past. Warning: Mars is no place for the faint-hearted. Mars has two small moons, Phobos and Deimos. Phobos, the innermost and larger moon, is heavily cratered, with deep grooves on its surface. It is slowly moving towards Mars and will crash into the planet or break apart in about 50 million years. So no more waiting, book your trip to Mars now!"
JUPITER = "Jupiter has a long history of surprising scientists – all the way back to 1610 when Galileo Galilei found the first moons beyond Earth. That discovery changed the way we see the universe. Fifth in line from the Sun, Jupiter is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined. Jupiter's familiar stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium. Jupiter’s iconic Great Red Spot is a giant storm bigger than Earth that has raged for hundreds of years.Jupiter's four largest moons – Io, Europa, Ganymede, and Callisto – were first observed by the astronomer Galileo Galilei in 1610 using an early version of the telescope. These four moons are known today as the Galilean satellites, and they're some of the most fascinating destinations in our solar system. Io is the most volcanically active body in the solar system. Ganymede is the largest moon in the solar system (even bigger than the planet Mercury). Callisto’s very few small craters indicate a small degree of current surface activity. A liquid-water ocean with the ingredients for life may lie beneath the frozen crust of Europa, making it a tempting place to explore."
SATURN = "Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Adorned with thousands of beautiful ringlets, Saturn is unique among the planets. It is not the only planet to have rings – made of chunks of ice and rock – but none are as spectacular or as complicated as Saturn's. From the jets of water that spray from Saturn's moon Enceladus to the methane lakes on smoggy Titan, the Saturn system is a rich source of scientific discovery and still holds many mysteries for those reayde to explore. Saturn is home to a vast array of intriguing and unique worlds. From the haze-shrouded surface of Titan to crater-riddled Phoebe, each of Saturn's moons tells another piece of the story surrounding the Saturn system."
URANUS = "The seventh planet from the Sun with the third largest diameter in our solar system, Uranus is very cold and windy. The ice giant is surrounded by 13 faint rings and 27 small moons as it rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side, orbiting the Sun like a rolling ball. You will be able to watch a very special sunrise since Uranus is also one of just two planets that rotate in the opposite direction than most of the planets (Venus is the other one), from east to west. Uranus has two sets of rings. The inner system of nine rings consists mostly of narrow, dark grey rings. There are two outer rings: the innermost one is reddish like dusty rings elsewhere in the solar system, and the outer ring is blue like Saturn's E ring."
NEPTUNE = "Tired of bright Sun and summer hot temperatures? This trip is for you! Dark, cold, and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system. More than 30 times as far from the Sun as Earth, Neptune is the only planet in our solar system not visible to the naked eye. In 2011 Neptune completed its first 165-year orbit since its discovery in 1846. Neptune is so far from the Sun that high noon on the big blue planet would seem like dim twilight to us. The warm light we see here on our home planet is roughly 900 times as bright as sunlight on Neptune."

# Trips
trips = [
  { destination: 'Pluton', departure_date: '01-08-2022', arrival_date: '01-08-2023', number_of_passengers: 5, description: PLUTO, price: 1_000_000, company: voyager },
  { destination: 'Mercure', departure_date: '24-12-2023', arrival_date: '28-02-2030', number_of_passengers: 15, description: MERCURY, price: 580_000, company: spacex },
  { destination: 'Venus', departure_date: '10-09-2024', arrival_date: '30-01-2025', number_of_passengers: 8, description: VENUS, price: 290_000, company: spacex },
  { destination: 'Mars', departure_date: '01-02-2023', arrival_date: '15-06-2025', number_of_passengers: 12, description: MARS, price: 4_550_000, company: spacex },
  { destination: 'Jupiter', departure_date: '04-08-2023', arrival_date: '15-04-2026', number_of_passengers: 10, description: JUPITER, price: 3_000_000, company: voyager },
  { destination: 'Saturne', departure_date: '10-03-2024', arrival_date: '17-05-2027', number_of_passengers: 25, description: SATURN, price: 2_500_000, company: voyager },
  { destination: 'Uranus', departure_date: '10-09-2024', arrival_date: '30-01-2025', number_of_passengers: 22, description: URANUS, price: 2_300_000, company: voyager },
  { destination: 'Neptune', departure_date: '10-09-2024', arrival_date: '30-01-2025', number_of_passengers: 15, description: NEPTUNE, price: 3_000_000, company: voyager}
]
# Trips creation
trips.each do |attributes|
  trip = Trip.create!(attributes)
  puts "Created a trip to #{trip.destination}"
end
puts 'Finished'

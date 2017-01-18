# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

prng= Random.new

for i in 1..100 do

  if (i<30)
    v=1
  elsif (i<50)
    v=5
  elsif (i<70)
    v=15
  elsif (i<80)
    v=30
  elsif (i<90)
    v=80
  else
    v=100
  end

  Coin.create(money_value: v, lat: prng.rand(32.058645..32.071833) , lng: prng.rand(34.766230..34.786015))

end
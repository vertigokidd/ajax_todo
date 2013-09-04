

5.times do |num|
  Item.create(description: Faker::Lorem.sentence, 
              status: false, 
              position: num)
end

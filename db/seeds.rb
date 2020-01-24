u = User.create(name: 'dj', email: 'test@email.com', password: 'password')

categories = ['Breakfast', 'Lunch', 'Dinner', 'Snacks']

a = u.logs.create(date: '2020-01-19')
b = u.logs.create(date: '2020-01-20')
c = u.logs.create


(20..30).to_a.sample.times do
  e = a.entries.create(category: categories.sample)


    e.foods.create(label: Faker::Food.sushi, protein: Faker::Number.within(range: 0..100), calories: Faker::Number.within(range: 0..100), fat: Faker::Number.within(range: 0..100), carbs: Faker::Number.within(range: 0..100))

end
(20..30).to_a.sample.times do
  e = b.entries.create(category: categories.sample)


    e.foods.create(label: Faker::Food.sushi, protein: Faker::Number.within(range: 0..100), calories: Faker::Number.within(range: 0..100), fat: Faker::Number.within(range: 0..100), carbs: Faker::Number.within(range: 0..100))

end
(20..30).to_a.sample.times do
  e = c.entries.create(category: categories.sample)


    e.foods.create(label: Faker::Food.sushi, protein: Faker::Number.within(range: 0..100), calories: Faker::Number.within(range: 0..100), fat: Faker::Number.within(range: 0..100), carbs: Faker::Number.within(range: 0..100))

end

puts "Create #{User.count} user"
puts "Created #{Log.count} logs"
puts "Created #{Entry.count} Entries"
puts "Created #{Food.count} Foods"

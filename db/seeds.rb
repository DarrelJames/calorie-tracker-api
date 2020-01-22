u = User.create(name: 'dj', email: 'test@email.com', password: 'password')

categories = ['Breakfast', 'Lunch', 'Dinner', 'Snacks']

a = u.logs.create(date: '2020-01-19')
b = u.logs.create(date: '2020-01-20')
c = u.logs.create(date: '2020-01-21')


5.times do
  e = a.entries.create(category: categories.sample)

  e.foods.create(label: Faker::Food.sushi)
end
5.times do
  e = b.entries.create(category: categories.sample)

  e.foods.create(label: Faker::Food.sushi)
end
5.times do
  e = c.entries.create(category: categories.sample)

  e.foods.create(label: Faker::Food.sushi)
end

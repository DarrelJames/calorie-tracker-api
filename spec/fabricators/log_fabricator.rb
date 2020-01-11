Fabricator(:log) do
  date {Faker::Date.forward(days: 2)}
end

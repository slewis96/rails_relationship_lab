# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  Country.create(name: Faker::Address.country)
end
10.times do
  country = Country.all.length
  Author.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, age: Faker::Number.number(2), country_id: rand(1..country))
end
20.times do
  author = Author.all.length
  Book.create(title: Faker::Book.title, genre: Faker::Book.genre, published: Faker::Date.between(3000.days.ago, Date.today), author_id: rand(1..author))
end
30.times do
  book = Book.all.length
  Chapter.create(title: Faker::Food.dish, book_id: rand(1..book))
end
10.times do
  chapters = Chapter.all.length
  Paragraph.create(body: Faker::Hipster.paragraph, chapter_id: rand(1..chapters))
end

User.create!(
  email:        "a@a.com",
  password:     "password",
  confirmed_at: Time.now
)

50.times do
  User.create!(
    email:  Faker::Internet.email,
    password: "password",
    confirmed_at: Time.now
  )
end

users = User.all

50.times do
  RegisteredApplication.create!(
    name: Faker::HarryPotter.character,
    url:  Faker::Internet.url,
    user: users.sample
  )
end

p "seeded"

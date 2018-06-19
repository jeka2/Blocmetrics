test_user = User.create!(
  email:        "a@a.com",
  password:     "password",
  confirmed_at: Time.now
)

10.times do
  User.create!(
    email:  Faker::Internet.email,
    password: "password",
    confirmed_at: Time.now
  )
end

users = User.all

10.times do
  RegisteredApplication.create!(
    name: Faker::HarryPotter.character,
    url:  Faker::Internet.url,
    user: users.sample
  )
end

registered_applications = RegisteredApplication.all

test_registered_application = RegisteredApplication.create!(
  name: "test",
  url:  "test@test.com",
  user: test_user
)

10.times do
  Event.create!(
    name: Faker::Science.element,
    registered_application: test_registered_application
  )
end

p "seeded"

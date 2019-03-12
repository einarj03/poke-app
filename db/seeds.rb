10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    date_of_birth: Faker::Date.birthday(12, 65),
    gender: Faker::Gender.binary_type
    )

  Suggestion.create(
    content: Faker::ChuckNorris.fact,
    for: "user_profile_questions"
    )

  UserProfileQuestion.create(
    user: User.last,
    suggestion: Suggestion.last,
    answer: Faker::Creature::Animal.name
    )
end


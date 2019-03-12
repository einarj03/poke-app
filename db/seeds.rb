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
    content: Faker::TvShows::HowIMetYourMother.quote,
    for: "user_profile_questions"
    )

  ProfileQuestion.create(
    user: User.last,
    suggestion: Suggestion.last,
    answer: Faker::Creature::Animal.name
    )
end

  User.create(
    first_name: "Barney",
    last_name: "Stinson",
    email: "toriasusann@gmail.com",
    password: "password",
    date_of_birth: Faker::Date.birthday(12, 65),
    gender: Faker::Gender.binary_type
    )

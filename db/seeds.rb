ProfileQuestion.destroy_all
Suggestion.destroy_all
User.destroy_all

5.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    date_of_birth: Faker::Date.birthday(12, 65),
    gender: Faker::Gender.binary_type
    )
  5.times do
    Suggestion.create(
      content: Faker::GreekPhilosophers.name,
      for: "user_profile_questions"
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
end

User.create(
  first_name: "Einar",
  last_name: "Jonsson",
  email: "einarjonsson@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male"
  )

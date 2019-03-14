ProfileQuestion.destroy_all
Suggestion.destroy_all
Message.destroy_all
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

einar = User.create(
  first_name: "Einar",
  last_name: "Jonsson",
  email: "einarjonsson@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male"
)

ferdi = User.create(
  first_name: "Feri",
  last_name: "Nussbaum",
  email: "ferdinuss@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male"
)

Poke.create(
  content: "Hey sweetie. Fancy a fuck?",
  sender: einar,
  receiver: ferdi
)

5.times do
  Message.create(
    content: Faker::TvShows::Friends.quote,
    user: User.last,
    poke: Poke.last
    )
end

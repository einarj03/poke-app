ProfileQuestion.destroy_all
Suggestion.destroy_all
Poke.destroy_all
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

einar = User.create(
  first_name: "Einar",
  last_name: "Jonsson",
  email: "einarjonsson@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552570435/best-face-moisturizer.png'
)

ferdi = User.create(
  first_name: "Feri",
  last_name: "Nussbaum",
  email: "ferdinuss@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552570650/800px_COLOURBOX6899073.jpg'
)

darrick = User.create(
  first_name: "King",
  last_name: "Darrick",
  email: "superfast@supa.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552570473/pbox.php.gif'
)

victoria = User.create(
  first_name: "Tori",
  last_name: "Yogi",
  email: "victoria@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552570370/0073_06813254_0740.jpg'
)

andre = User.create(
  first_name: "Dr",
  last_name: "Dre",
  email: "coastarica@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552570314/glenn-kelly-waskewitch.jpg'
)

inou = User.create(
  first_name: "Inou",
  last_name: "Codes",
  email: "Inou@yahoo.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552570443/pexels-photo-614810.jpeg.jpg'
)

jennifer = User.create(
  first_name: "Jenny",
  last_name: "Scottland",
  email: "JenjenJenny.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552572158/rts1ctde.jpg'
)

avalon = User.create(
  first_name: "Avalon",
  last_name: "Pony",
  email: "Ava@pony.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552572295/5e81371c890a88377dd2195a99d3deba.jpg'
)

picasso = User.create(
  first_name: "Picasso",
  last_name: "Emerald",
  email: "art@picassoart.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552570529/220px-Jason_at_golf.jpg'
)

jacob = User.create(
  first_name: "Professor",
  last_name: "Mertz",
  email: "cleanmyskin@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552570399/5523_UnionSuit_Grey_Front2_Web_600x.jpg'
)

Poke.create(
  content: "I like em tall and skinny",
  sender_id: einar.id,
  receiver_id: ferdi.id
)

Poke.create(
  content: "I'm obviously in love!",
  sender_id: einar.id,
  receiver_id: victoria.id
)

Poke.create(
  content: "Give me a chance and I will shine your head",
  sender_id: avalon.id,
  receiver_id: darrick.id
)

Poke.create(
  content: "Hey cutie, can I borrow your glasses?",
  sender_id: einar.id,
  receiver_id: jennifer.id
)

Poke.create(
  content: "Oh how I admire your work",
  sender_id: darrick.id,
  receiver_id: picasso.id
)

Poke.create(
  content: "I'll by you a pony",
  sender_id: einar.id,
  receiver_id: avalon.id
)

Poke.create(
  content: "Hey sweetie. Fancy a fuck?",
  sender_id: ferdi.id,
  receiver_id: andre.id
)

Poke.create(
  content: "I've been looking for good german hair",
  sender_id: einar.id,
  receiver_id: jacob.id
)

Poke.create(
  content: "Hey could you teach me to code",
  sender_id: jennifer.id,
  receiver_id: inou.id
)

Poke.create(
  content: "Come here hunny buns",
  sender_id: andre.id,
  receiver_id: victoria.id
)


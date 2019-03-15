ProfileAnswer.destroy_all
Question.destroy_all
Message.destroy_all
Poke.destroy_all
User.destroy_all

# QUESTIONS = ["question1", "question2"]

Question.create(
  content: "Truth or Dare..."
)

Question.create(
  content: "Preferred drink..."
)

Question.create(
  content: "Go-to kareoke song is..."
)

Question.create(
  content: "Best first date..."
)

Question.create(
  content: "When your drunk what's the first thing you do..."
)

Question.create(
  content: "Must-see movie..."
)

Question.create(
  content: "My super power..."
)

Question.create(
  content: "If you could teleport to anywhere this weekend it would be..."
)

Question.create(
  content: "Last thing you did for the first time..."
)

einar = User.create(
  first_name: "Einar",
  last_name: "Jonsson",
  email: "einarjonsson@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552658052/leonardo_dicaprio-gt.jpg'
)

ferdi = User.create(
  first_name: "Feri",
  last_name: "Nussbaum",
  email: "ferdinuss@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552658703/tortoise-shell-glasses-for-guys-700x467-700x467.jpg'
)

darrick = User.create(
  first_name: "King",
  last_name: "Darrick",
  email: "superfast@supa.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552658312/dr_DaveChappelle_CS_w600_h389.jpg'
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
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552658544/photo-1535441577682-5a7bc0702a7d.jpg'
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
  last_name: "Lou",
  email: "Jenjen@Jenny.com",
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
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552658889/main-qimg-0b9b9f17aafc49b6f5d60b31a894ad0e.png'
)

User.all.each do |user|
  5.times do
    ProfileAnswer.create(
      user: user,
      question: Question.all.sample,
      answer: Faker::Creature::Animal.name
      )
  end
end

Poke.create(
  content: "Hey sweetie. Fancy a .....drink?",
  sender: avalon,
  receiver: inou
  )

Poke.create(
  content: "I like em tall and skinny",
  sender: einar,
  receiver: ferdi
)

Poke.create(
  content: "I'm obviously in love!",
  sender: einar,
  receiver: victoria
)

Poke.create(
  content: "Give me a chance and I will shine your head",
  sender: avalon,
  receiver: darrick
)

Poke.create(
  content: "Hey cutie, can I borrow your glasses?",
  sender: einar,
  receiver: jennifer
)

Poke.create(
  content: "Oh how I admire your work",
  sender: darrick,
  receiver: picasso
)

Poke.create(
  content: "I'll by you a pony",
  sender: einar,
  receiver: avalon
)

Poke.create(
  content: "You must be a small amount of red phosphorus and I must be a tiny wooden stick… Because we're a match",
  sender: ferdi,
  receiver: andre
)

Poke.create(
  content: "I've been looking for good German hair",
  sender: einar,
  receiver: jacob
)

Poke.create(
  content: "Hey could you teach me to code",
  sender: jennifer,
  receiver: inou
)

Poke.create(
  content: "Come here hunny buns",
  sender: andre,
  receiver: victoria
)

5.times do
  Message.create(
    content: Faker::TvShows::Friends.quote,
    user: User.last,
    poke: Poke.last
    )
end






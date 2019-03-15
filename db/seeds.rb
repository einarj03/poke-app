ProfileAnswer.destroy_all
Question.destroy_all
Message.destroy_all
Poke.destroy_all
User.destroy_all

# QUESTIONS = ["question1", "question2"]

Question.create(
  content: "Nightclub or Netflix..."
)

Question.create(
  content: "Greatest travel story..."
)

Question.create(
  content: "Go-to song is..."
)

Question.create(
  content: "We'll get on if..."
)

Question.create(
  content: "Most inspiring teacher I've met..."
)

Question.create(
  content: "Must-see movie..."
)

Question.create(
  content: "My secret skill..."
)

Question.create(
  content: "If you could teleport to anywhere this weekend it would be..."
)

Question.create(
  content: "We'll get on if..."
)

einar = User.create(
  first_name: "Einar",
  last_name: "Jonsson",
  email: "einarjonsson@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552579334/d201369b9bd924f183ce5da88aacc42c--lord-of-the-rings-the-lord.jpg'
)

ferdi = User.create(
  first_name: "Feri",
  last_name: "Nussbaum",
  email: "ferdinuss@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552575762/ffa8df39ce894bd78a843d8465832d4f.jpg'
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
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552570399/5523_UnionSuit_Grey_Front2_Web_600x.jpg'
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
  content: "Hey sweetie. Fancy a fuck?",
  sender: einar,
  receiver: ferdi
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
  content: "Hey sweetie. Fancy a fuck?",
  sender: ferdi,
  receiver: andre
)

Poke.create(
  content: "I've been looking for good german hair",
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






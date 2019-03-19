ProfileAnswer.destroy_all
Question.destroy_all
Message.destroy_all
Poke.destroy_all
User.destroy_all

# QUESTIONS = ["question1", "question2"]
PokeSuggestion.create(
  content: "Do you work at Starbucks? Because I like you a latte."
)

PokeSuggestion.create(
  content: "If you were a vegetable you'd be a cute-cumber."
)

PokeSuggestion.create(
  content: "Are you an interior decorator? Because when I saw you, the entire room became beautiful."
)

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
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552907457/eww.jpg'
)

ferdi = User.create(
  first_name: "Ferdi",
  last_name: "Nussbaum",
  email: "ferdinuss@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552903782/Ferdi.jpg'
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

antoine = User.create(
  first_name: "Antoine",
  last_name: "KeComo",
  email: "Kecomo@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552903656/5aa7dd877388d_man0.jpg'
)

edgar = User.create(
  first_name: "Edgar",
  last_name: "Elwin",
  email: "EdgarE@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552903656/close-up-serious-mans-face-with-hipster-mustache-and-beard-chroma-key-green-screen-background_brafdr9kx_thumbnail-full01.png'
)

raymond = User.create(
  first_name: "Raymond",
  last_name: "Jackson",
  email: "bjackson@supa.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552579430/qehlhetqdlbn8rgzwdtg.gif'
)

donovan = User.create(
  first_name: "Donovan",
  last_name: "Jones",
  email: "adrian@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552904841/woman-confronts-man-entering-his-building13.jpg'
)

fasika = User.create(
  first_name: "Fasika",
  last_name: "Lem",
  email: "africa@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552904951/hqdefault.jpg'
)

christina = User.create(
  first_name: "Christina",
  last_name: "Yun",
  email: "ChrisYun@yahoo.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552905068/beautiful_asian_girls_4.jpg'
)

marina = User.create(
  first_name: "Marina",
  last_name: "K",
  email: "marina@lewagon.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552905353/maxresdefault.jpg'
)

valerie = User.create(
  first_name: "Valerie",
  last_name: "V",
  email: "V@code.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552905611/science_makeup.jpg'
)

julia = User.create(
  first_name: "Julia",
  last_name: "W",
  email: "Jewlz@oart.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552905602/271843A300000578-0-image-m-85_1427687461901.jpg'
)

stephanie = User.create(
  first_name: "Stephanie",
  last_name: "A",
  email: "Steph@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552905738/1395252161-attractive-women-more-pull-investors-answer.jpg'
)

lou = User.create(
  first_name: "Louis",
  last_name: "J",
  email: "louey@yahoo.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552658052/leonardo_dicaprio-gt.jpg'
)

 gus = User.create(
  first_name: "Gus",
  last_name: "N",
  email: "Zozo@yahoo.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552903782/Ferdi.jpg'
)

drake = User.create(
  first_name: "Drake",
  last_name: "D",
  email: "Drizzy@supa.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552658312/dr_DaveChappelle_CS_w600_h389.jpg'
)

steven = User.create(
  first_name: "Steven",
  last_name: "M",
  email: "Stev@oracle.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552570370/0073_06813254_0740.jpg'
)

willy = User.create(
  first_name: "Willy Wonka",
  last_name: "D",
  email: "coastarica@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552658544/photo-1535441577682-5a7bc0702a7d.jpg'
)

ami = User.create(
  first_name: "Ami",
  last_name: "P",
  email: "ami@yahoo.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552906873/girl-nature-bubbles-mood.jpg'
)

sarah = User.create(
  first_name: "Sarah",
  last_name: "L",
  email: "sillysarah@Jenny.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552906807/endurance-24-hours-of-the-nurburgring-2015-black-falcon-party-girl-on-the-starting-grid.jpg'
)

helen = User.create(
  first_name: "Helen",
  last_name: "P",
  email: "helentattoo@pony.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552906949/lilliya-scarlett-instagram-1528814125-custom-0.png'
)

jordan = User.create(
  first_name: "Jordan",
  last_name: "E",
  email: "dennisJ@picassoart.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552906949/lilliya-scarlett-instagram-1528814125-custom-0.png'
)

riley = User.create(
  first_name: "Riley",
  last_name: "M",
  email: "rentapup@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1552907145/BGIO_LaurenAsh.jpg'
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
  sender: victoria,
  receiver: inou
  )

Poke.create(
  content: "Would you like to do homework wih me?",
  sender: einar,
  receiver: ferdi
)

Poke.create(
  content: "Where is the yoga I've been waiting for? I think it's at the bar. Join?",
  sender: ferdi,
  receiver: victoria
)

Poke.create(
  content: "Give me a chance and I will shine your head",
  sender: avalon,
  receiver: darrick
)

Poke.create(
  content: "Hey cutie, can I borrow your glasses?",
  sender: jennifer,
  receiver: ferdi,
  accepted: true
)

Poke.create(
  content: "Oh how I admire your work",
  sender: darrick,
  receiver: picasso
)

Poke.create(
  content: "I'll buy you a pony",
  sender: ferdi,
  receiver: avalon,
  accepted: true
)

Poke.create(
  content: "You must be a small amount of red phosphorus and I must be a tiny wooden stick… Because we're a match",
  sender: einar,
  receiver: andre
)

Poke.create(
  content: "I've been looking for good German hair",
  sender: ferdi,
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






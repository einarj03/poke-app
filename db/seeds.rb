ProfileAnswer.destroy_all
Question.destroy_all
Message.destroy_all
Poke.destroy_all
User.destroy_all


# PICK UP LINE SUGGESTIONS

PokeSuggestion.create(
  content: "Do you work at Starbucks? Because I like you a latte."
)

PokeSuggestion.create(
  content: "If you were a vegetable you'd be a cute-cumber."
)

PokeSuggestion.create(
  content: "I’m not a photographer, but I can picture me and you together."
)

PokeSuggestion.create(
  content: "What can I do to see you smile one more time?"
)

PokeSuggestion.create(
  content: "If I had food in my teeth, would you tell me?"
)

PokeSuggestion.create(
  content: "How can I come over to you without getting a drink splashed in my face?"
)

PokeSuggestion.create(
  content: "Are you an interior decorator? Because when I saw you, the entire room became beautiful."
)

# QUESTIONS = ["question1", "question2"]

Question.create(
  content: "Truth or Dare...?"
)

Question.create(
  content: "If I could donate a million Euros..."
)

Question.create(
  content: "Two truths and a lie..."
)

Question.create(
  content: "My go-to karaoke song is..."
)

Question.create(
  content: "The best first date would be..."
)

Question.create(
  content: "The first thing I do when I'm drunk is..."
)

Question.create(
  content: "My must-see movie..."
)

Question.create(
  content: "My super secret superpower..."
)

Question.create(
  content: "If I could teleport to anywhere this weekend it would be..."
)

Question.create(
  content: "The last thing I did for the first time..."
)

Question.create(
  content: "I should be famous for..."
)

Question.create(
  content: "If you ask my mom about me..."
)

einar = User.create(
  first_name: "Einar",
  last_name: "Jonsson",
  email: "einarjonsson@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://avatars1.githubusercontent.com/u/17878011?v=4'
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
  first_name: "Darrick",
  last_name: "E",
  email: "superfast@supa.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://avatars0.githubusercontent.com/u/44401835?v=4'
)

victoria = User.create(
  first_name: "Tori",
  last_name: "Golightly",
  email: "victoria@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'http://simpletwentysomething.com/wp-content/uploads/2018/12/IMG_5867-955x1024@2x.jpg'
)

andre = User.create(
  first_name: "Dre",
  last_name: "Dr",
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
  first_name: "Jennifer",
  last_name: "Lou",
  email: "Jennifer@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://scontent.fmad3-7.fna.fbcdn.net/v/t1.0-9/41269128_10216160512713112_6958566757254561792_o.jpg?_nc_cat=105&_nc_ht=scontent.fmad3-7.fna&oh=e79405fb540077e49005050cc317cee0&oe=5D4F2BB2'
)

avalon = User.create(
  first_name: "Avalon",
  last_name: "vdH",
  email: "Avalon@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://scontent.fmad3-7.fna.fbcdn.net/v/t1.0-9/33609377_2006754169397298_4984177657152274432_o.jpg?_nc_cat=103&_nc_ht=scontent.fmad3-7.fna&oh=9994195294c95724a4746b073c5c766f&oe=5D01EA72'
)

picasso = User.create(
  first_name: "Picasso",
  last_name: "Emerald",
  email: "art@picassoart.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res-4.cloudinary.com/crunchbase-production/image/upload/c_thumb,h_256,w_256,f_auto,g_faces,z_0.7,q_auto:eco/t7qpgbljdc5isp3eoqi3'
)

jacob = User.create(
  first_name: "Professor",
  last_name: "Mertz",
  email: "cleanmyskin@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://scontent.fmad3-8.fna.fbcdn.net/v/t1.0-9/10314756_10203865682633352_4354059326055160332_n.jpg?_nc_cat=108&_nc_ht=scontent.fmad3-8.fna&oh=e11081d024937b3867c83c746cb7061f&oe=5D17D6D3'
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

ellyn = User.create(
  first_name: "Ellyn",
  last_name: "Bsc",
  email: "Ellyn@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://scontent.fmad3-7.fna.fbcdn.net/v/t31.0-8/13268172_10207889734574214_6820227807929960753_o.jpg?_nc_cat=105&_nc_ht=scontent.fmad3-7.fna&oh=db9b4594c9c4244a1b9f5468e8eb4c35&oe=5D4CE996'
)

chris = User.create(
  first_name: "Chris",
  last_name: "B",
  email: "chris@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://avatars0.githubusercontent.com/u/27666567?v=4'
)

julia = User.create(
  first_name: "Julia",
  last_name: "S",
  email: "julia@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://avatars3.githubusercontent.com/u/45966114?v=4'
)

rebecca = User.create(
  first_name: "Rebecca",
  last_name: "Green",
  email: "rebecca@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://scontent.fmad3-8.fna.fbcdn.net/v/t31.0-8/18595201_10155375699508708_8494542241948096377_o.jpg?_nc_cat=108&_nc_ht=scontent.fmad3-8.fna&oh=f9e7592089383dd0bde60d24e10ef5c9&oe=5D128CBA'
)

marina = User.create(
  first_name: "Marina",
  last_name: "Kjaer",
  email: "marina@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://scontent.fmad3-6.fna.fbcdn.net/v/t1.0-9/14691148_10154328390678801_6903469277469096535_n.jpg?_nc_cat=111&_nc_ht=scontent.fmad3-6.fna&oh=43b6793aadbfa15fc789c105d74783d7&oe=5D498B52'
)

antoine = User.create(
  first_name: "Antoine",
  last_name: "Ginger",
  email: "antoine@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://avatars3.githubusercontent.com/u/44864883?v=4'
)

valerie = User.create(
  first_name: "Valerie",
  last_name: "V",
  email: "Valerie@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://scontent.fmad3-7.fna.fbcdn.net/v/t31.0-8/13738089_10154464328224170_1321423150436375485_o.jpg?_nc_cat=100&_nc_ht=scontent.fmad3-7.fna&oh=5338b8d4e4d520f3a06bed2ee2d9cd30&oe=5D0EE52B'
)

augustin = User.create(
  first_name: "Augustin",
  last_name: "W",
  email: "augustin@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://avatars1.githubusercontent.com/u/46055255?v=4'
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

doncho = User.create(
  first_name: "Dondon",
  last_name: "P",
  email: "Doncho@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://scontent.fmad3-6.fna.fbcdn.net/v/t31.0-8/10517424_1069677773044548_748181538013369622_o.jpg?_nc_cat=109&_nc_ht=scontent.fmad3-6.fna&oh=f10f801ecf8d231d080288f25b9aa789&oe=5D1B8DBA'
)

jordi = User.create(
  first_name: "Jordi",
  last_name: "N",
  email: "Jordi@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://avatars0.githubusercontent.com/u/46191243?v=4'
)

marin = User.create(
  first_name: "Marin",
  last_name: "B",
  email: "Marin@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://scontent.fmad3-5.fna.fbcdn.net/v/t31.0-8/14361260_10209661265189457_619619398408859087_o.jpg?_nc_cat=102&_nc_ht=scontent.fmad3-5.fna&oh=277be96d25d62811f4c555c694d76b05&oe=5D18E5DB'
)

nico = User.create(
  first_name: "Nico",
  last_name: "M",
  email: "nico@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://scontent.fmad3-6.fna.fbcdn.net/v/t31.0-8/11426805_10205889221282660_4812064409108246188_o.jpg?_nc_cat=111&_nc_ht=scontent.fmad3-6.fna&oh=c5c3f3e60b19e10b9304faef73b05e66&oe=5D057F04'
)

paulus = User.create(
  first_name: "Paulus",
  last_name: "D",
  email: "Paulus@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://avatars0.githubusercontent.com/u/18395225?v=4'
)

pontus = User.create(
  first_name: "Pontus",
  last_name: "D",
  email: "pontus@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://avatars2.githubusercontent.com/u/45567309?v=4'
)

gus = User.create(
  first_name: "Gus",
  last_name: "De Vita",
  email: "gus@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://scontent.fmad3-7.fna.fbcdn.net/v/t1.0-9/21765183_10155820552924459_1050900139843986205_n.jpg?_nc_cat=103&_nc_ht=scontent.fmad3-7.fna&oh=6598417ac8c0fc8f50f2cf9e0fa12cec&oe=5D508709'
)

ollie = User.create(
  first_name: "Ollie",
  last_name: "S",
  email: "ollie@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://scontent.fmad3-5.fna.fbcdn.net/v/t31.0-8/10379731_10204209391928418_6532640256250207604_o.jpg?_nc_cat=102&_nc_ht=scontent.fmad3-5.fna&oh=efc63545400983768241f9f8170cbfc6&oe=5D49E4BF'
)

jordan = User.create(
  first_name: "Jordan",
  last_name: "E",
  email: "dennisJ@picassoart.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553011010/a9bf84ca7eab9294c80fb39c4705621b.jpg'
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

juan = User.create(
  first_name: "Juan",
  last_name: "M",
  email: "rendp@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553009978/Italian_20Men.jpg'
)

alex = User.create(
  first_name: "Alex",
  last_name: "S",
  email: "Allv@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553009965/5be919208eac2-e1542024670824-473x372.jpg'
)

zion = User.create(
  first_name: "Zion",
  last_name: "W",
  email: "dukeball@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553009992/graphicstock-picture-of-young-dark-skinned-man-wearing-sunglasses-and-cap-skateboarding-against-the-nature-background_Subvc1qrne_SB_PM.jpg'
)

coach = User.create(
  first_name: "Coach",
  last_name: "B",
  email: "CoachMe@oracle.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553009939/18345151-handsome-muscular-man.jpg'
)

zach = User.create(
  first_name: "Zach",
  last_name: "D",
  email: "dzachary@mac.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "male",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553010009/Grey-hair-056-639x960.jpg'
)

laura = User.create(
  first_name: "Laura",
  last_name: "P",
  email: "Law@yahoo.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553009792/portrait-of-a-young-woman-with-blue-eyes-touching-her-beautiful-dark-hair-close-up_rmxgwcye__F0000.png'
)

izzy = User.create(
  first_name: "Izzy",
  last_name: "O",
  email: "Izzy@Jenny.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553009788/116.jpg'
)

elena = User.create(
  first_name: "Elena",
  last_name: "N",
  email: "FrenchWine@pony.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553009819/green-eye-hair-color.jpg'
)
lexi = User.create(
  first_name: "Lexi",
  last_name: "D",
  email: "Woww@gowow.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553009705/mexican-women1.jpg'
)

charlie = User.create(
  first_name: "Charlie",
  last_name: "K",
  email: "unisexnames@pony.com",
  password: "password",
  date_of_birth: Faker::Date.birthday(12, 65),
  gender: "female",
  remote_photo_url: 'https://res.cloudinary.com/poke-practice/image/upload/v1553009705/eb59e337b60c4cb61e48e91d07ae05d9.jpg'
)
User.all.each do |user|
  5.times do
    ProfileAnswer.create(
      user: user,
      question: Question.all.sample,
      answer: Faker::TvShows::Friends.quote
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
  sender: einar,
  receiver: jennifer,
  status: "accepted"
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
  status: "rejected"
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






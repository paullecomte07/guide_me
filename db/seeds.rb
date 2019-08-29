User.destroy_all
Guide.destroy_all
Wish.destroy_all
Review.destroy_all
Wish.destroy_all
Tag.destroy_all

puts "Creating users..."

mohammad = User.create!(
  first_name: "Mohammad",
  last_name: "Gholami",
  email: "mohammad@gmail.com",
  password: 123456,
  address: "London"
  )
  london_guide = Guide.create!(
    title: "Street Art in London",
    user: mohammad,
    duration: 2,
    overview: "Best street art in central London",
    location: "London",
    distance: 4,
    category: "street art",
    price_cents:200
    )

    stop1 = Stop.create!(
      guide: london_guide,
      name: "St Paul cathedral",
      description: "fake descrition has to be a bit long to test whether everything is well displaied thanks a lot for everything i like guide me app",
      latitude: 51.513725,
      longitude: -0.098569,
      list_order:1,
      image: "https://images.pexels.com/photos/1796715/pexels-photo-1796715.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
      )

    stop2 = Stop.create!(
      guide: london_guide,
      name: "Millenium bridge",
      description: "fake descrition has to be a bit long to test whether everything is well displaied thanks a lot for everything i like guide me app",
      latitude: 51.510756,
      longitude: -0.098449,
      )
    stop3 = Stop.create!(
      guide: london_guide,
      name: "Tower bridge",
      description: "fake descrition has to be a bit long to test whether everything is well displaied thanks a lot for everything i like guide me app",
      latitude: 51.506632,
      longitude: -0.074632,
      )

    stop4 = Stop.create!(
      guide: london_guide,
      name: "Tower of london",
      description: "fake descrition has to be a bit long to test whether everything is well displaied thanks a lot for everything i like guide me app",
      latitude: 51.509562,
      longitude: -0.075151,
      )

paul = User.create!(
  first_name: "Paul",
  last_name: "Lecomte",
  email: "paul@gmail.com",
  password: 123456,
  address: "Paris"
  )
  paris_guide = Guide.create!(
    title: "Hidden Adventures in Paris",
    user: paul,
    duration: 3,
    overview: "Discover new adventures in Paris",
    location: "Paris",
    distance: 6,
    category: "adventure",
    price_cents:200
    )

francesca = User.create!(
  first_name: "Francesca",
  last_name: "Vago",
  email: "francesca@gmail.com",
  password: 123456,
  address: "Milan"
  )
  milan_guide = Guide.create!(
    title: "History of Milan",
    user: francesca,
    duration: 2,
    overview: "Find out about the History of Milan",
    location: "Milan",
    distance: 3,
    category: "history",
    price_cents:200
    )

puts "Creating reviews..."
mohammad_review = Review.create!(
  stars: 5,
  content: "great tour!",
  user: mohammad,
  guide: paris_guide
  )

francesca_review = Review.create!(
  stars: 4,
  content: "loved the adventures",
  user: francesca,
  guide: paris_guide
  )


puts "creating tags..."
fun = Tag.create!(name: "Fun")
adventures = Tag.create!(name: "adventures")
touristy = Tag.create!(name: "touristy")
busy = Tag.create!(name: "busy")
local = Tag.create!(name: "local")
family = Tag.create!(name: "family")
solo = Tag.create!(name: "solo")
historic = Tag.create!(name: "historic")
modern = Tag.create!(name: "modern")
dramatic = Tag.create!(name: "dramatic")
puts "Finished!"

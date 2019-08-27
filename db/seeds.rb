User.destroy_all
Guide.destroy_all
Review.destroy_all

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

puts "Finished!"

User.destroy_all
Guide.destroy_all


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
    category: "street art"
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
    category: "adventure"
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
    category: "history"
    )




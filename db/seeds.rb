User.destroy_all
Guide.destroy_all
Stop.destroy_all
Order.destroy_all
Review.destroy_all
GuideTag.destroy_all
Tag.destroy_all

puts "Creating users..."

mohammad = User.create!(
  first_name: "Mohammad",
  last_name: "Gholami",
  email: "mohammad@gmail.com",
  password: 123456,
  address: "London"
  )

paul = User.create!(
  first_name: "Paul",
  last_name: "Lecomte",
  email: "paul@gmail.com",
  password: 123456,
  address: "Paris"
  )

francesca = User.create!(
  first_name: "Francesca",
  last_name: "Vago",
  email: "francesca@gmail.com",
  password: 123456,
  address: "Milan"
  )

puts "Creating guides..."

paris_guide = Guide.create!(
  title: "Hidden Adventures in Paris",
  user: paul,
  duration: 3,
  overview: "Discover new adventures in Paris",
  location: "Paris",
  distance: 6,
  category: "adventure",
  price_cents:299,
  image: "https://images.pexels.com/photos/739407/pexels-photo-739407.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  )

milan_guide = Guide.create!(
  title: "History of Milan",
  user: francesca,
  duration: 2,
  overview: "Find out about the History of Milan",
  location: "Milan",
  distance: 3,
  category: "history",
  price_cents:200,
  image: "https://images.pexels.com/photos/2097092/pexels-photo-2097092.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  )

london_guide = Guide.create!(
  title: "One Day Tour of London",
  user: mohammad,
  location: "London",
  overview: "Only one day in London? This tour explores the most important and historic attractions in the city",
  image: "https://images.unsplash.com/photo-1448906654166-444d494666b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  price_cents:199,
  )

puts "Creating our stops..."

stop1 = Stop.create!(
  name: "St Paul cathedral",
  description: "Rebuilt by Christopher Wren after the great Fire of 1666, St. Paul's has been the site of many historic state occasions; including Sir Winston Churchill's state funeral and the Royal Wedding of Prince Charles and Lady Diana Spencer.
                A busy working Christian community with several daily services at which all are welcome. St Paul’s also welcomes visitors with access to five levels of the Cathedral including the Whispering Gallery with its unique acoustics and the Stone and Golden Galleries atop the Dome offering breathtaking panoramic views over London.
                Multimedia guides in eight languages for adults and children are included with sightseeing admission as well as free guided tours to join upon arrival.",
  latitude: 51.513725,
  longitude: -0.098569,
  image: "https://images.unsplash.com/photo-1448906654166-444d494666b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  content: "St Paul's Cathedral, London, is an Anglican cathedral, the seat of the Bishop of London and the mother church of the Diocese of London. It sits on Ludgate Hill at the highest point of the City of London and is a Grade I listed building.
            Its dedication to Paul the Apostle dates back to the original church on this site, founded in AD 604.
            The present cathedral, dating from the late 17th century, was designed in the English Baroque style by Sir Christopher Wren. Its construction, completed in Wren's lifetime, was part of a major rebuilding programme in the City after the Great Fire of London.
            The cathedral building largely destroyed in the Great Fire, now often referred to as Old St Paul's Cathedral, was a central focus for medieval and early modern London, including Paul's walk and St. Paul's Churchyard being the site of St. Paul's Cross.
            The cathedral is one of the most famous and most recognisable sights of London. Its dome, framed by the spires of Wren's City churches, has dominated the skyline for over 300 years. At 365 feet (111 m) high, it was the tallest building in London from 1710 to 1967.
            The dome is among the highest in the world. St Paul's is the second-largest church building in area in the United Kingdom after Liverpool Cathedral.
            Services held at St Paul's have included the funerals of Admiral Nelson, the Duke of Wellington, Sir Winston Churchill and Baroness Thatcher; jubilee celebrations for Queen Victoria; peace services marking the end of the First and Second World Wars; the wedding of Prince Charles and Lady Diana Spencer; the launch of the Festival of Britain; and the thanksgiving services for the Silver, Golden and Diamond Jubilees and the 80th and 90th birthdays of Queen Elizabeth II.
            St Paul's Cathedral is the central subject of much promotional material, as well as of images of the dome surrounded by the smoke and fire of the Blitz.
            The cathedral is a working church with hourly prayer and daily services. The tourist entry fee at the door is £20 for adults (January 2019, cheaper online), but no charge is made to worshippers.",
  )

stop2 = Stop.create!(
  name: "Tower Bridge",

  description: "An iconic London landmark and one of Britain's best loved historic sites, Tower Bridge is open to the public 363 days a year.
                Within the Bridge's iconic structure and magnificent Victorian Engine rooms, the Tower Bridge Exhibition is the best way of exploring the most famous bridge in the world!
                Come learn about this incredible feat of Victorian engineering, discover how the Bridge is raised and enjoy stunning panoramic views across London from our high-level walkways, 42 metres above the River Thames.
                Opening Times: 09:30 - 17:00 (last admission )",
  latitude: 51.506632,
  longitude: -0.074632,
  image: "https://images.unsplash.com/photo-1520967824495-b529aeba26df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80",
  content: "Tower Bridge is a combined bascule and suspension bridge in London, built between 1886 and 1894.
            The bridge crosses the River Thames close to the Tower of London and has become an iconic symbol of London.
            Because of this, Tower Bridge is sometimes confused with London Bridge, situated some 0.5 mi (0.80 km) upstream.
            Tower Bridge is one of five London bridges now owned and maintained by the Bridge House Estates, a charitable trust overseen by the City of London Corporation.
            It is the only one of the Trust's bridges not to connect the City of London directly to the Southwark bank, as its northern landfall is in Tower Hamlets.
            The bridge consists of two bridge towers tied together at the upper level by two horizontal walkways, designed to withstand the horizontal tension forces exerted by the suspended sections of the bridge on the landward sides of the towers.
            The vertical components of the forces in the suspended sections and the vertical reactions of the two walkways are carried by the two robust towers.
            The bascule pivots and operating machinery are housed in the base of each tower. Before its restoration in the 2010s, the bridge's colour scheme dated from 1977, when it was painted red, white and blue for Queen Elizabeth II's Silver Jubilee.
            Its colours were subsequently restored to blue and white.
            The bridge deck is freely accessible to both vehicles and pedestrians, whereas the bridge's twin towers, high-level walkways and Victorian engine rooms form part of the Tower Bridge Exhibition, for which an admission charge is made.
            The nearest London Underground tube stations are Tower Hill on the Circle and District lines, London Bridge on the Jubilee and Northern lines and Bermondsey on the Jubilee line, and the nearest Docklands Light Railway station is Tower Gateway.
            The nearest National Rail stations are at Fenchurch Street and London Bridge."
  )

stop3 = Stop.create!(
  name: "London Eye",
  description: "A trip on the Coca-Cola London Eye is truly captivating, a ‘must-do’ and has been London’s number one visitor experience for over a decade.
                Elegantly rotating over the River Thames and less than a five minute stroll from Waterloo station along the beautiful Southbank.
                Step into your capsule and feel the exhilaration as you rise up over the Thames.
                Come face to face with the Houses of Parliament and Big Ben, before soaring above them - up to 135 metres on the world’s tallest cantilevered observation wheel.
                There are mesmerising 360-degree views of the capital laid out before you - London’s most famous landmarks and up to 40km out of the city to Windsor Castle on a clear day.",
  latitude: 51.509562,
  longitude: -0.075151,
  image: "https://images.unsplash.com/photo-1546885692-8e7c1b59da2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80",
  content: "The London Eye is a cantilevered observation wheel on the South Bank of the River Thames in London. It is Europe's tallest cantilevered observation wheel,[10] and is the most popular paid tourist attraction in the United Kingdom with over 3.75 million visitors annually, and has made many appearances in popular culture.
            The structure is 135 metres (443 ft) tall and the wheel has a diameter of 120 metres (394 ft). When it opened to the public in 2000 it was the world's tallest Ferris wheel. Its height was surpassed by the 160-metre (525 ft) Star of Nanchang in 2006, the 165-metre (541 ft) Singapore Flyer in 2008, and the 167-metre-tall (547.9 ft) High Roller (Las Vegas) in 2014.
            Supported by an A-frame on one side only, unlike the taller Nanchang and Singapore wheels, the Eye is described by its operators as 'the world\'s tallest cantilevered observation wheel'.
            The London Eye used to offer the highest public viewing point in London until it was superseded by the 245-metre-high (804 ft) observation deck on the 72nd floor of The Shard, which opened to the public on 1 February 2013.
            The London Eye adjoins the western end of Jubilee Gardens (previously the site of the former Dome of Discovery), on the South Bank of the River Thames between Westminster Bridge and Hungerford Bridge beside County Hall, in the London Borough of Lambeth.",
  )

stop4 = Stop.create!(
  name: "Big Ben",
  description: "This place is temporarily closed. Elizabeth Tower is the name of the famous clock tower which stands at the Houses of Parliament.
                The name Big Ben is often used to describe the tower, the clock and the bell but the name was first given to the Great Bell.
                The Elizabeth Tower was completed in 1859 and the Great Clock started on 31 May. The Great Bell's strikes were heard for the first time on 11 July and the quarter bells first chimed on 7 September.
                All visits to Big Ben and the Elizabeth Tower tours are now suspended due to refurbishment with the last tour having taken place on 16 December 2016.
                Tours are scheduled to resume in early 2020 once the work is complete.
                Visitors can still book tickets for a number of other tours at the Houses of Parliament which take place on Saturdays throughout the year and on weekdays during Parliamentary recesses.",
  latitude: 51.510756,
  longitude: -0.098449,
  image: "https://images.unsplash.com/photo-1500380804539-4e1e8c1e7118?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  content: "Big Ben is the nickname for the Great Bell of the clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower.
            The official name of the tower in which Big Ben is located was originally the Clock Tower, but it was renamed Elizabeth Tower in 2012 to mark the Diamond Jubilee of Elizabeth II.
            The tower was designed by Augustus Pugin in a neo-Gothic style. When completed in 1859, its clock was the largest and most accurate four-faced striking and chiming clock in the world.
            The tower stands 315 feet (96 m) tall, and the climb from ground level to the belfry is 334 steps. Its base is square, measuring 39 feet (12 m) on each side. Dials of the clock are 23 feet (7.0 m) in diameter.
            On 31 May 2009, celebrations were held to mark the tower's 150th anniversary. Big Ben is the largest of the tower's five bells and weighs 13.5 long tons (13.7 tonnes; 15.1 short tons).
            It was the largest bell in the United Kingdom for 23 years. The origin of the bell's nickname is open to question; it may be named after Sir Benjamin Hall, who oversaw its installation, or heavyweight boxing champion Benjamin Caunt.
            Four quarter bells chime at 15, 30 and 45 minutes past the hour and just before Big Ben tolls on the hour. The clock uses its original Victorian mechanism, but an electric motor can be used as a backup.
            The tower is a British cultural icon recognised all over the world. It is one of the most prominent symbols of the United Kingdom and parliamentary democracy, and it is often used in the establishing shot of films set in London.
            The clock tower has been part of a Grade I listed building since 1970 and a UNESCO World Heritage Site since 1987.",
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

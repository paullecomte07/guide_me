User.destroy_all
Guide.destroy_all
Stop.destroy_all
Order.destroy_all
Review.destroy_all
GuideTag.destroy_all
Tag.destroy_all
Wish.destroy_all

puts "Creating users..."

mohammad = User.create!(
  first_name: "Mohammad",
  last_name: "Gholami",
  email: "mohammad@gmail.com",
  password: 123456,
  address: "London",
  avatar: "https://kitt.lewagon.com/placeholder/users/gholamim",
  )

paul = User.create!(
  first_name: "Paul",
  last_name: "Lecomte",
  email: "paul@gmail.com",
  password: 123456,
  address: "Paris",
  avatar: "https://kitt.lewagon.com/placeholder/users/paullecomte07",
  )

francesca = User.create!(
  first_name: "Francesca",
  last_name: "Vago",
  email: "francesca@gmail.com",
  password: 123456,
  address: "Milan",
  avatar: "https://kitt.lewagon.com/placeholder/users/francesca-vago",
  )

alex = User.create!(
  first_name: "Alex",
  last_name: "Flamant",
  email: "alex@gmail.com",
  password: 123456,
  address: "Mexico",
  avatar: "https://kitt.lewagon.com/placeholder/users/alexandreflamant",
  )

raquel = User.create!(
  first_name: "Raquel",
  last_name: "Minasi",
  email: "raquel@gmail.com",
  password: 123456,
  address: "Brazil",
  avatar: "https://kitt.lewagon.com/placeholder/users/rminasi",
  )

benoit = User.create!(
  first_name: "Benoit",
  last_name: "De Oliveira",
  email: "ben@gmail.com",
  password: 123456,
  address: "France",
  avatar: "https://kitt.lewagon.com/placeholder/users/BenoitDeo",
  )

evia = User.create!(
  first_name: "Evia",
  last_name: "Horoneko",
  email: "evia@gmail.com",
  password: 123456,
  address: "Latvia",
  avatar: "https://kitt.lewagon.com/placeholder/users/missevia"
  )

susan = User.create!(
  first_name: "Susan",
  last_name: "Renaud",
  email: "susan@gmail.com",
  password: 123456,
  address: "Texas",
  avatar: "https://kitt.lewagon.com/placeholder/users/susan-renaud"
  )

melissa = User.create!(
  first_name: "Melissa",
  last_name: "Connors",
  email: "melissa@gmail.com",
  password: 123456,
  address: "Hawaii",
  avatar: "https://kitt.lewagon.com/placeholder/users/MauiMel"
  )

ghita = User.create!(
  first_name: "Ghita",
  last_name: "Tahiri",
  email: "ghita@gmail.com",
  password: 123456,
  address: "Morocco",
  avatar: "https://kitt.lewagon.com/placeholder/users/GhitaTa",
  )

dan = User.create!(
  first_name: "Daniel",
  last_name: "Goran",
  email: "dan@gmail.com",
  password: 123456,
  address: "London",
  avatar: "https://kitt.lewagon.com/placeholder/users/2DGH",
  )

charlie = User.create!(
  first_name: "Charlie",
  last_name: "Meacher",
  email: "charlie@gmail.com",
  password: 123456,
  address: "London",
  avatar: "https://kitt.lewagon.com/placeholder/users/Freetrades"
  )

moritz = User.create!(
  first_name: "Moritz",
  last_name: "Indenhuck",
  email: "moritz@gmail.com",
  password: 123456,
  address: "Berlin",
  avatar: "https://kitt.lewagon.com/placeholder/users/akellos",
  )

puts "Creating guides..."

berlin_guide = Guide.create!(
  title: "Berlin Beer Tour: Drink Like a Local",
  user: moritz,
  duration: 3,
  distance: 4,
  location: "Berlin",
  category: "food",
  price_cents: 350,
  image: "https://images.unsplash.com/photo-1538685634737-24b83e3fa2f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80",
  overview: "Journey through the history of beer and see why it’s so popular among the Berlin locals.
            Savor the flavors and aromas while listening to stories of Berlin’s neighborhoods."
  )

paris_guide = Guide.create!(
  title: "Hidden Adventures in Paris",
  user: paul,
  duration: 3,
  overview: "Discover new undiscovered adventures in Paris with your friends",
  location: "Paris",
  distance: 6,
  category: "adventure",
  price_cents:299,
  image: "https://images.pexels.com/photos/739407/pexels-photo-739407.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  )

pub_tour_london = Guide.create!(
  title: "London's Historic Pubs Crawl",
  user: charlie,
  duration: 4,
  distance: 2,
  location: "London",
  category: "adventure",
  price_cents: 400,
  image: "https://images.unsplash.com/photo-1559070581-ec616bb3a176?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80",
  overview: "Find out about the stories behind London's most ancient pubs while getting drunk with your friends."
  )

versailles_guide = Guide.create!(
  title: "Romantic Garden of Versailles",
  user: benoit,
  duration: 5,
  distance: 4,
  location: "Paris",
  category: "nature",
  price_cents: 250,
  image: "https://images.unsplash.com/photo-1563827367882-3a0c0eb79d19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  overview: "The best way to see Versailles' gardens... With your best half!"
  )

berlin_dungeon_guide = Guide.create!(
  title: "Horror in the Berlin Dungeon",
  user: evia,
  duration: 1,
  distance: 2,
  location: "Berlin",
  category: "horror",
  price_cents: 450,
  image: "https://images.unsplash.com/photo-1562500652-dd7ae0d2870f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  overview: "Screaming and laughing through Berlin’s dark past.
            A journey through over 800 years of Berlin’s history – from the medieval times to the 20th century."
  )

milan_guide = Guide.create!(
  title: "Sunset from Milan",
  user: francesca,
  duration: 2,
  overview: "Visit the Duomo from every angle: explore its exteriors, reach the rooftop for a breathtaking view of the city. Admire the interior of this Gothic masterpiece, one of the biggest churches in Italy. ",
  location: "Milan",
  distance: 3,
  category: "history",
  price_cents:200,
  image: "https://images.pexels.com/photos/2097092/pexels-photo-2097092.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  )

porto_guide = Guide.create!(
  title: "The best of Porto with your friends",
  user: melissa,
  duration: 2,
  overview: "Get a great dose of culture, architecture and top-notch food with this tour of the best city in Portugal.",
  location: "Porto",
  distance: 3,
  category: "adventure",
  price_cents:200,
  image: "https://images.unsplash.com/photo-1555881400-69a2384edcd4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  )

london_guide = Guide.create!(
  title: "A London Guide for Families",
  user: mohammad,
  location: "London",
  duration: 3,
  distance: 4,
  category: "history",
  overview: "Only one day in London? This tour explores the most important attractions in the city. Fascinating architecture, ancient history and surprising secrets are all packed into this 3-hour walking tour.",
  image: "https://images.unsplash.com/photo-1448906654166-444d494666b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  price_cents:199,
  )

rome_guide = Guide.create!(
  title: "Live the Colosseum like a Gladiator",
  user: alex,
  duration: 3,
  distance: 4,
  location: "Rome",
  price_cents: 199,
  image: "https://images.unsplash.com/photo-1533604848340-30ce9aeeb0be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  overview: "Walk in the footsteps of gladiators and Roman emperors. Wander along the Sacred Way (Via Sacra) as you immerse yourself in the vivid Roman history that surrounds you.",
  category: "history",
  )

horror_london_guide = Guide.create!(
  title: "The Creepiest Tour in London",
  user: raquel,
  duration: 2,
  distance: 3,
  location: "London",
  overview: "Discover how traitors and criminals were punished, why the Ripper was never caught and what life was really like for people living and dying here.",
  category: "horror",
  price_cents: 499,
  image: "https://images.pexels.com/photos/2591276/pexels-photo-2591276.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  )

louvre_guide = Guide.create!(
  title: "Solo Visit of the Louvre Museum ",
  user: ghita,
  duration: 4,
  distance: 1,
  location: "Paris",
  overview: "Experience culture and art through the ages with this tour of Paris’ epic Louvre Museum.
            Spend four hours learning about some of the museum’s 35,000 artworks across eight themed galleries.",
  category: "history",
  price_cents: 399,
  image: "https://images.unsplash.com/photo-1560518700-7a5559afb10c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  )

old_london_guide = Guide.create!(
  title: "London Old City like a Londoner",
  user: charlie,
  duration: 3,
  distance: 6,
  location: "London",
  overview: "Learn about the city’s long and sometimes dark past from your guide’s insightful commentary and see a new side to one of the world’s most visited cities.",
  category: "history",
  price_cents: 299,
  image: "https://images.unsplash.com/photo-1505761671935-60b3a7427bad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
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

stop5 = Stop.create!(
  name: "Millennium Bridge",
  content: "The Millennium Bridge was the first new bridge to be built over the Thames in London for more than 100 years. Usually, all new bridges across the Thames require an Act of Parliament to be passed.",
  latitude: 51.510760,
  longitude: -0.098336,
  image: "https://images.unsplash.com/photo-1550611030-c85cadc4a67d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1655&q=80",
  description:"The Millennium Bridge, officially known as the London Millennium Footbridge, is a steel suspension bridge for pedestrians crossing the River Thames in London, linking Bankside with the City of London. It is located between Southwark Bridge and Blackfriars Railway Bridge. It is owned and maintained by Bridge House Estates, a charitable trust overseen by the City of London Corporation. Construction began in 1998, and it initially opened in June 2000.

Londoners nicknamed the bridge the 'Wobbly Bridge' after pedestrians experienced an alarming swaying motion. The bridge was closed later on opening day and, after two days of limited access, for almost two years while modifications were made to eliminate the motion. It reopened in February 2002.
The design of the bridge was the subject of a competition organised in 1996 by Southwark council and RIBA Competitions. The winning entry was an innovative 'blade of light' effort from Arup Group, Foster and Partners, and Sir Anthony Caro. "


  )

stop6 = Stop.create!(
  name: "Tate Modern",
  content: "Tate Modern is a modern art gallery located in London .It is one of the largest museums of modern and contemporary art in the world .The gallery is a highly visited museum, pulling in approximately 5.8 million visitors in 2019",
  latitude: 51.506961,
  longitude: -0.097865,
  image: "https://upload.wikimedia.org/wikipedia/commons/6/6c/Tate_Modern_viewed_from_Thames_Pleasure_Boat_-_geograph.org.uk_-_307445.jpg",
  description:"The gallery was founded in 1897, as the National Gallery of British Art. When its role was changed to include the national collection of modern art as well as the national collection of British art, in 1932, it was renamed the Tate Gallery after sugar magnate Henry Tate of Tate & Lyle, who had laid the foundations for the collection. The Tate Gallery was housed in the current building occupied by Tate Britain, which is situated in Millbank, London.
                In 2000, the Tate Gallery transformed itself into the current-day Tate, which consists of a network of four museums: Tate Britain, which displays the collection of British art from 1500 to the present day; Tate Modern, also in London, which houses the Tate's collection of British and international modern and contemporary art from 1900 to the present day; Tate Liverpool (founded in 1988), which has the same purpose as Tate Modern but on a smaller scale; and Tate St Ives in Cornwall (founded in 1993), which displays modern and contemporary art by artists who have connections with the area.
                All four museums share the Tate Collection.
                One of the Tate's most publicised art events is the awarding of the annual Turner Prize, which takes place at Tate Britain."
  )

stop7 = Stop.create!(
  name: "Shakespeare's Globe",
  content: "Many of Shakespeare’s plays were first performed at the Globe, although his plays were performed at other theatres and many playwrights wrote for the Globe.",
  latitude: 51.508390,
  longitude: -0.097473,
  image: "https://images.unsplash.com/photo-1562342101-ec26556bb233?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  description:"Shakespeare's Globe is a reconstruction of the Globe Theatre, an Elizabethan playhouse for which William Shakespeare wrote his plays, in the London Borough of Southwark, on the south bank of the River Thames. The original theatre was built in 1599, destroyed by fire in 1613, rebuilt in 1614, and then demolished in 1644. The modern Globe Theatre is an academic approximation based on available evidence of the 1599 and 1614 buildings. It is considered quite realistic, though contemporary safety requirements mean that it accommodates only 1,400 spectators compared to the original theatre’s 3,000.

  Shakespeare's Globe was founded by the actor and director Sam Wanamaker, built about 230 metres (750 ft) from the site of the original theatre and opened to the public in 1997, with a production of Henry V. The site also includes the Sam Wanamaker Playhouse, an indoor theatre which opened in January 2014. This is a smaller, candle-lit space based on the indoor playhouses of Jacobean London. The Sackler Studios, an educational and rehearsal studio complex, is situated just around the corner from the main site."

  )

stop8 = Stop.create!(
  name: "Monument to the Great Fire of London",
  content:"311 spiral steps lead up to the public viewing platform, where visitors can get breath-taking views of London from 160 feet (48.7 metres) above ground.",
  latitude: 51.510150,
  longitude: -0.086167,
  image: "https://www.themonument.info/wp-content/uploads/2019/07/The-Monument-column-and-cage-in-the-City-of-London.jpg",
  description:"The Monument to the Great Fire of London, more commonly known simply as the Monument, is a Doric column in London, United Kingdom, situated near the northern end of London Bridge. Commemorating the Great Fire of London, it stands at the junction of Monument Street and Fish Street Hill, 202 feet (62 m) in height and 202 feet west of the spot in Pudding Lane where the Great Fire started on 2 September 1666. Constructed between 1671 and 1677, it was built on the site of St. Margaret's, Fish Street, the first church to be destroyed by the Great Fire. It is Grade I listed and is a scheduled monument.[1] Another monument, the Golden Boy of Pye Corner, marks the point near Smithfield where the fire was stopped.

The Monument comprises a fluted Doric column built of Portland stone topped with a gilded urn of fire. It was designed by Christopher Wren and Robert Hooke. Its height marks its distance from the site of the shop of Thomas Farriner (or Farynor), the king's baker, where the blaze began.

The viewing platform near the top of the Monument is reached by a narrow winding staircase of 311 steps. A mesh cage was added in the mid-19th century to prevent people jumping to the ground, after six people had committed suicide there between 1788 and 1842."

  )


puts "Creating reviews..."


Review.create!(
  stars: 5,
  content: "Super fun! Great way to learn about some of the creepier side of London.",
  user: alex,
  guide: horror_london_guide
  )

Review.create!(
  stars: 5,
  content: "Excellent guided tour about the shady history of London!",
  user: paul,
  guide: horror_london_guide
  )

Review.create!(
  stars: 4,
  content: "I thorougly enjoyed the tour. Linda, the tour guide, was very knowledgeable and a great storyteller.",
  user: benoit,
  guide: horror_london_guide
  )

Review.create!(
  stars: 5,
  content: "Linda was a fantastic guide! Great storytelling of the darker history of London. Highly recommended to all",
  user: evia,
  guide: horror_london_guide
  )

Review.create!(
  stars: 3,
  content: "I’ve bought the Grim Reaper Tour, but unfortunately I was a bit disappointed.
            Maybe I had bad luck, but I wouldn’t recommend the tour for this price.",
  user: susan,
  guide: horror_london_guide
  )

Review.create!(
  stars: 5,
  content: "Great tour!",
  user: dan,
  guide: london_guide
  )

Review.create!(
  stars: 4,
  content: "Awesome and fun tour! It was a great combination of history, comedy and a little bit of theater.",
  user: alex,
  guide: london_guide
  )

Review.create!(
  stars: 5,
  content: "Excellent free tour. It was great, he mixed humour with history very successfully, strongly recommend.",
  user: susan,
  guide: london_guide
  )

Review.create!(
  stars: 5,
  content: "Thanks to Mohammad for an amazing tour of old London. His expertise and experience were visible throughout the entire time walking! ",
  user: raquel,
  guide: london_guide
  )

Review.create!(
  stars: 4,
  content: "The tour was really relaxed and covered most of the focus points. Mohammad brought good vibes and a lot of humour. I can recommend it!",
  user: moritz,
  guide: london_guide
  )

Review.create!(
  stars: 4,
  content: "A very good walking tour with our guide Mohammad full of enthusiasm and knowledge, taking us to some places and streets that we wouldn't have seen by ourselves. ",
  user: melissa,
  guide: london_guide
  )

Review.create!(
  stars: 5,
  content: "It was very interesting to discover this area of the city with a guide who could show us the best route to visit and give us a lot of information.",
  user: evia,
  guide: london_guide
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

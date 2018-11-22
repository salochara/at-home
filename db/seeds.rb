
  Event.destroy_all
  User.destroy_all
  Reservation.destroy_all


user_attributes = [
  {
    name: "Alessandra",
    email: "alessandra@gmail.com",
    password: "12345678",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542796875/Alessandra_Huydts.jpg"
  },
  {
    name: "Victoria",
    email: "victoria@gmail.com",
    password: "12345678"
  },
  {
    name: "Salo",
    email: "salo@gmail.com",
    password: "12345678"
  },
  {
    name: "Emmanuel",
    email: "emmanuel@gmail.com",
    password: "12345678"
  },
  {
    name: "Baraa",
    email: "baraa@gmail.com",
    password: "12345678"
  },
  {
    name: "Cory",
    email: "cory@gmail.com",
    password: "12345678"
  },
  {
    name: "Daniel",
    email: "daniel@gmail.com",
    password: "12345678"
  },

  {
    name: "Gabriel",
    email: "gabriel@gmail.com",
    password: "12345678"
  },
  {
    name: "Jack",
    email: "jack@gmail.com",
    password: "12345678"
  },
  {
    name: "Leah",
    email: "leah@gmail.com",
    password: "12345678"
  },
  {
    name: "Moshe",
    email: "moshe@gmail.com",
    password: "12345678"
  },
  {
    name: "Narmeen",
    email: "narmeen@gmail.com",
    password: "12345678"
  },
  {
    name: "Ruben",
    email: "ruben@gmail.com",
    password: "12345678"
  },
  {
    name: "Thomas",
    email: "thomas@gmail.com",
    password: "12345678"
  },
  {
    name: "Yoann",
    email: "yoann@gmail.com",
    password: "12345678"
  },
  {
    name: "Zaneta",
    email: "zaneta@gmail.com",
    password: "12345678"
  }
]
User.create!(user_attributes)


event_attirbutes = [
  {
    title: "Thanksgiving Dinner",
    capacity: 5,
    location: "Dizengoff St 247, Tel Aviv-Yafo, Israel",
    user: User.first,
    date: "23/11/2018",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709462/gabriel-garcia-marengo-68299-unsplash.jpg",
    description: "Come to our Thanksgiving Dinner! You won't regret it. We will have a turkey and all the must have thanksgiving dishes. You are also welcome to bring some of your favorite dishes to share with all of us at our feast."
  },
   {
    title: "Picknick in the park",
    capacity: 10,
    location: "Ben Yehuda St 182, Tel Aviv-Yafo, Israel",
    user: User.second,
    date: "22/11/2018 19:30",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709522/brittany-gaiser-482343-unsplash.jpg",
    description: "You like a cosy atmosphere with nice people? Then this event is perfect for you. We will meet up and have a nice dinner in the park. We will bring many small dishes but you are welcome to let us know if you also want to bring something. We are looking forward to meeting you and enjoying a nice little dinner together. "
  },
   {
    title: "Italian Night",
    capacity: 3,
    location: "Eliezer Peri St 10, Tel Aviv-Yafo, Israel",
    user: User.last,
    date: "12/12/2018 20:00",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709453/at-home/shawn-ang-682394-unsplash.jpg",
    description: "My mother is Italian and she taught me a lot about making italian food. I love cooking italian food and I would love to cook some of my families recipies for you. Sign up to try a variety of italian food. Click join to have dinner with me."
  },
   {
    title: "BBQ party",
    capacity: 6,
    location: "Mapu St 9, Tel Aviv-Yafo, Israel",
    user: User.fifth,
    date: "01/12/2018 19:45",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/at-home/lee-myungseong-716836-unsplash.jpg",
    description: "What's better on a nice autumn evening than a BBQ in our cute little garden. My husband and I love to meet new people. He is great with the grill, and I love to prepare many different side dishes to go along with it. We would love to meet all of you who might be interested in having a little party with us."
  },
   {
    title: "Vietnamese Food Night",
    capacity: 2,
    location: "Shlomo ha-Melekh St 1, Tel Aviv-Yafo, Israel",
    user: User.third,
    date: "4/12/2018 19:30",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/at-home/rawpixel-754045-unsplash_1.jpg",
    description: "I recently travelled to Vietnam and did a cooking course there. Now that I am back in Tel Aviv I want to practice my skills. Its not very fun to eat by myself so I would love for you to join me try my new creations"
  },
  {
    title: "Dinner Outdoors",
    capacity: 4,
    location: "HaYarkon St 66, Tel Aviv-Yafo, Israel",
    user: User.order("RANDOM()").first,
    date: "22/11/2018 18:30",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/at-home/johanna-dahlberg-690086-unsplash.jpg",
    description: "Come to our Chinese Food Night! We have the best food in town"
  },
  {
    title: "Japanese night",
    capacity: 4,
    location: "Shlomo Ibn Gabirol St 23, Tel Aviv-Yafo, Israel",
    user: User.order("RANDOM()").first,
    date: "22/11/2018 18:00",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542723047/at-home/florian-metzner-1121738-unsplash.jpg",
    description: "Come to our sushi night! All you can eat"
  },
  {
    title: "Israeli night",
    capacity: 3,
    location: "Aluf Kalman Magen St 3, Tel Aviv-Yafo, Israel",
    user: User.order("RANDOM()").first,
    date: "19/12/2018 20:00",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542723030/at-home/louis-hansel-1160001-unsplash.jpg",
    description: "For sure.. the best falafel you'll ever have!"
  },
  {
    title: "Authentic Pasta night",
    capacity: 4,
    location: "Rav Aluf David Elazar St 30, Tel Aviv-Yafo, Israel",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790596/jorge-zapata-44723-unsplash.jpg",
    description: "For sure.. the best pasta you'll ever have!"
  },
{
    title: "Light Japanese Lunch ",
    capacity: 2,
    location: "Wilmersdorfer Str.145-146, Berlin 10585, Germany",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790594/rawpixel-1062919-unsplash.jpg",
    description: "For sure.. the best japanese food you'll ever have!"
  },
{
    title: "Community Dinner",
    capacity: 8,
    location: "Fehrbelliner Pl., 10707 Berlin, Germany",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790591/rawpixel-778722-unsplash.jpg",
    description: "For sure.. the best dinner experience you'll ever have!"
  },
{
    title: "Excessive Brunch",
    capacity: 4,
    location: "Steglitzer Damm 22, Berlin 12169, Germany",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790588/rachel-park-366508-unsplash.jpg",
    description: "For sure.. the best breakfast food you'll ever have!"
  },
{
    title: "Homecooked Indian Dinner",
    capacity: 7,
    location: "Goltzstraße 3, 10781 Berlin, Germany",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790587/pille-riin-priske-986371-unsplash.jpg",
    description: "For sure.. the best Naan bread and butter chicken you'll ever have!"
  },
{
    title: "Snacks and wine",
    capacity: 6,
    location: "Tauentzienstr. 21-24, Berlin 10789, Germany",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790587/kelsey-chance-575535-unsplash.jpg",
    description: "For sure.. the best experience you'll ever have!"
  },
{
    title: "Picknick and Wine night",
    capacity: 6,
    location: "241 W Broadway, New York, NY 10013",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790583/dave-lastovskiy-127581-unsplash.jpg",
    description: "For sure.. the best picknick you'll ever have!"
  },
{
    title: "Korean Bibimbap",
    capacity: 2,
    location: "45 Bayard St, New York, NY 10013",
    user: User.order("RANDOM()").first,
    date: "23/11/2018 19:00",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790583/jakub-kapusnak-296881-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"
  },
{
    title: "Burgers and Beer",
    capacity: 3,
    location: "138 Lafayette St, New York, NY",
    user: User.order("RANDOM()").first,
    date: "23/11/2018 21:00",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790583/dan-gold-105699-unsplash.jpg",
    description: "For sure.. the best burgers you'll ever have!"
  },
{
    title: "Great Sandwiches",
    capacity: 4,
    location: "142 Orchard St, New York, NY",
    user: User.order("RANDOM()").first,
    date: "23/11/2018 15:00",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790579/anna-sullivan-635364-unsplash.jpg",
    description: "For sure.. the best sandwishes you'll ever have!"
  },
{
    title: "Vegan Breakfast",
    capacity: 4,
    location: "235 Hoe St, Walthamstow, London E17 9PP, UK",
    user: User.order("RANDOM()").first,
    date: "23/11/2018 10:00",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790579/ho-hyou-735008-unsplash.jpg",
    description: "For sure.. the best vegan food you'll ever have!"
  },
  {
    title: "Homemade Sushi",
    capacity: 2,
    location: "117 Benwell Rd, London N7 7BW, UK",
    user: User.order("RANDOM()").first,
    date: "22/11/2018 17:00",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790578/epicurrence-64533-unsplash.jpg",
    description: "I’m a sushi chef working at a sushi bar in London. Making sushi is my life's passion, and I hope to share the art of preparing delicious sushi with you."
  },
  {
    title: "Pancake Breakfast",
    capacity: 4,
    location: "107 Clapton Road, London, Greater London",
    user: User.order("RANDOM()").first,
    date: "2/12/2018 10:00 ",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790577/calum-lewis-387612-unsplash.jpg",
    description: "Architect of training and passionate about cooking and gastronomy, I just created my gourmet pancake manufacturing company in collaboration with my sister and we deliver in the region of Aix-en-Provence lunch boxes for brunches and lunches. Sharing this experience with you would allow me to meet new people while making you discover my passion, as well as local products."
  },
  {
    title: "Homemade Italian Dinner",
    capacity: 2,
    location: "34 Drayton Park, Highbury East, London N5 1PB, UK",
    user: User.order("RANDOM()").first,
    date: "23/11/2018 19:00",
    remote_photo_url: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790577/christine-siracusa-385441-unsplash.jpg",
    description: "We are the owners of this famous pasta shop called 'Dalle nostre mani'. We make fresh pasta as our mum and grandma tought us and we will share with you all the secrets of working with flour and water. Our family owns an organic farm where we produce wine, olive oil, fruit and vegetable that you will taste in our restaurant Vivanda as conclusion of the experience."

  }
]
Event.create!(event_attirbutes)

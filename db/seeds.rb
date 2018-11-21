
  Event.destroy_all
  User.destroy_all
  Reservation.destroy_all


user_attributes = [
  {
    name: "Alessandra",
    email: "alessandra@gmail.com",
    password: "12345678"
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
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709462/gabriel-garcia-marengo-68299-unsplash.jpg",
    description: "Come to our Thanksgiving Dinner! You won't regret"
  },
   {
    title: "Picknick in the park",
    capacity: 10,
    location: "Ben Yehuda St 182, Tel Aviv-Yafo, Israel",
    user: User.second,
    date: "22/11/2018 19:30",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709522/brittany-gaiser-482343-unsplash.jpg",
    description: "Come to our Picknick in the park! Let's enjoy the park together"
  },
   {
    title: "Italian Night",
    capacity: 3,
    location: "Eliezer Peri St 10, Tel Aviv-Yafo, Israel",
    user: User.last,
    date: "12/12/2018 20:00",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709453/at-home/shawn-ang-682394-unsplash.jpg",
    description: "Let's all enjoy an italian night! The best pastas and pizzas in town"
  },
   {
    title: "BBQ party",
    capacity: 6,
    location: "Mapu St 9, Tel Aviv-Yafo, Israel",
    user: User.fifth,
    date: "01/12/2018 19:45",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/at-home/lee-myungseong-716836-unsplash.jpg",
    description: "Come to our BBQ party! The best BBQ in Tel Aviv"

  },
   {
    title: "Vietnamese Food Night",
    capacity: 2,
    location: "Shlomo ha-Melekh St 1, Tel Aviv-Yafo, Israel",
    user: User.third,
    date: "4/12/2018 19:30",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/at-home/rawpixel-754045-unsplash_1.jpg",
    description: "Come to our Vietnamese Food Night! We have the best Pho in town"
  },
  {
    title: "Dinner Outdoors",
    capacity: 4,
    location: "HaYarkon St 66, Tel Aviv-Yafo, Israel
",
    user: User.order("RANDOM()").first,
    date: "22/11/2018 18:30",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/at-home/johanna-dahlberg-690086-unsplash.jpg",
    description: "Come to our Chinese Food Night! We have the best food in town"
  },
  {
    title: "Japanese night",
    capacity: 4,
    location: "Shlomo Ibn Gabirol St 23, Tel Aviv-Yafo, Israel",
    user: User.order("RANDOM()").first,
    date: "22/11/2018 18:00",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542723047/at-home/florian-metzner-1121738-unsplash.jpg",
    description: "Come to our sushi night! All you can eat"
  },
  {
    title: "Mexican night",
    capacity: 6,
    location: "Shlomo Ibn Gabirol St 12, Tel Aviv-Yafo, Israel",
    user: User.order("RANDOM()").first,
    date: "23/11/2018 19:00",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542723038/at-home/christine-siracusa-363257-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
  {
    title: "Israeli night",
    capacity: 3,
    location: "Aluf Kalman Magen St 3, Tel Aviv-Yafo, Israel",
    user: User.order("RANDOM()").first,
    date: "19/12/2018 20:00",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542723030/at-home/louis-hansel-1160001-unsplash.jpg",
    description: "For sure.. the best falafel you'll ever have!"
  }
  {
    title: "Authentic Pasta night",
    capacity: 4,
    location: "Rav Aluf David Elazar St 30, Tel Aviv-Yafo, Israel",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790596/jorge-zapata-44723-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
{
    title: "Light Japanese Lunch ",
    capacity: 2,
    location: "Wilmersdorfer Str.145-146, Berlin 10585, Germany",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790594/rawpixel-1062919-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
{
    title: "Community Dinner",
    capacity: 8,
    location: "Fehrbelliner Pl., 10707 Berlin, Germany
",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790591/rawpixel-778722-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
{
    title: "Excessive Brunch",
    capacity: 4,
    location: "Steglitzer Damm 22, Berlin 12169, Germany",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790588/rachel-park-366508-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
{
    title: "Homecooked Indian Dinner",
    capacity: 7,
    location: "Goltzstraße 3, 10781 Berlin, Germany",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790587/pille-riin-priske-986371-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
{
    title: "Snacks and wine",
    capacity: 6,
    location: "Tauentzienstr. 21-24, Berlin 10789, Germany",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790587/kelsey-chance-575535-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
{
    title: "Picknick and Wine night",
    capacity: 6,
    location: "241 W Broadway, New York, NY 10013",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790583/dave-lastovskiy-127581-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
{
    title: "Korean Bibimbap",
    capacity: 2,
    location: "45 Bayard St, New York, NY 10013
",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790583/dave-lastovskiy-127581-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
{
    title: "Burgers and Beer",
    capacity: 3,
    location: "138 Lafayette St, New York, NY",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790583/dan-gold-105699-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
{
    title: "Great Sandwiches",
    capacity: 4,
    location: "142 Orchard St, New York, NY",
    user: User.order("RANDOM()").first,
    date: "19/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790579/anna-sullivan-635364-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
{
    title: "Vegan Breakfast",
    capacity: 4,
    location: "235 Hoe St, Walthamstow, London E17 9PP, UK",
    user: User.order("RANDOM()").first,
    date: "23/11/2018 10:00",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790579/ho-hyou-735008-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
  {
    title: "Taco Night",
    capacity: 6,
    location: "Mexico City",
    user: User.order("RANDOM()").first,
    date: "6/12/2018 21:00",
    photo: "593 High Rd Leytonstone, London E11 4PA, UK",
    description: "For sure.. the best tacos you'll ever have!"

  },
  {
    title: "Homemade Sushi",
    capacity: 2,
    location: "Mexico City",
    user: User.order("RANDOM()").first,
    date: "22/11/2018 17:00",
    photo: "117 Benwell Rd, London N7 7BW, UK",
    description: "For sure.. the best tacos you'll ever have!"

  },
  {
    title: "Pancake Breakfast",
    capacity: 4,
    location: "107 Clapton Road, London, Greater London",
    user: User.order("RANDOM()").first,
    date: "2/12/2018 10:00 ",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790577/calum-lewis-387612-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
  {
    title: "Homemade Italian Dinner",
    capacity: 2,
    location: "34 Drayton Park, Highbury East, London N5 1PB, UK",
    user: User.order("RANDOM()").first,
    date: "23/11/2018 19:00",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542790577/christine-siracusa-385441-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  }
]
Event.create!(event_attirbutes)

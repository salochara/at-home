
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
    location: "New York",
    user: User.first,
    date: "23/11/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709462/gabriel-garcia-marengo-68299-unsplash.jpg",
    description: "Come to our Thanksgiving Dinner! You won't regret"
  },
   {
    title: "Picknick in the park",
    capacity: 10,
    location: "Hyde Park",
    user: User.second,
    date: "22/11/2018 19:30",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709522/brittany-gaiser-482343-unsplash.jpg",
    description: "Come to our Picknick in the park! Let's enjoy the park together"
  },
   {
    title: "Italian Night",
    capacity: 3,
    location: "Rome",
    user: User.last,
    date: "12/12/2018 20:00",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709453/at-home/shawn-ang-682394-unsplash.jpg",
    description: "Let's all enjoy an italian night! The best pastas and pizzas in town"
  },
   {
    title: "BBQ party",
    capacity: 6,
    location: "Tel Aviv",
    user: User.fifth,
    date: "01/12/2018 19:45",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/at-home/lee-myungseong-716836-unsplash.jpg",
    description: "Come to our BBQ party! The best BBQ in Tel Aviv"

  },
   {
    title: "Vietnamese Food Night",
    capacity: 5,
    location: "London",
    user: User.third,
    date: "4/12/2018 19:30",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/at-home/rawpixel-754045-unsplash_1.jpg",
    description: "Come to our Vietnamese Food Night! We have the best Pho in town"
  },
  {
    title: "Dinner Outdoors",
    capacity: 7,
    location: "Shanghai",
    user: User.order("RANDOM()").first,
    date: "22/11/2018 18:30",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/at-home/johanna-dahlberg-690086-unsplash.jpg",
    description: "Come to our Chinese Food Night! We have the best food in town"
  },
  {
    title: "Sushi night",
    capacity: 10,
    location: "Tokyo",
    user: User.order("RANDOM()").first,
    date: "22/11/2018 18:00",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542723047/at-home/florian-metzner-1121738-unsplash.jpg",
    description: "Come to our sushi night! All you can eat"
  },
  {
    title: "Mexican night",
    capacity: 5,
    location: "Mexico City",
    user: User.order("RANDOM()").first,
    date: "23/11/2018 19:00",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542723038/at-home/christine-siracusa-363257-unsplash.jpg",
    description: "For sure.. the best tacos you'll ever have!"

  },
  {
    title: "Israeli night",
    capacity: 15,
    location: "Tel Aviv",
    user: User.order("RANDOM()").first,
    date: "19/12/2018 20:00",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542723030/at-home/louis-hansel-1160001-unsplash.jpg",
    description: "For sure.. the best falafel you'll ever have!"
  }
]
Event.create!(event_attirbutes)

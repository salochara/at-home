
if Rails.env.development?
  Event.destroy_all
  User.destroy_all
  Reservation.destroy_all
end

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
    date: "01/03/2019",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709462/gabriel-garcia-marengo-68299-unsplash.jpg"

  },
   {
    title: "Picknick in the park",
    capacity: 10,
    location: "Hyde Park",
    user: User.second,
    date: "06/10/2019",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709522/brittany-gaiser-482343-unsplash.jpg"

  },
   {
    title: "Italian Night",
    capacity: 3,
    location: "Rome",
    user: User.last,
    date: "12/12/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709453/shawn-ang-682394-unsplash.jpg"

  },
   {
    title: "BBQ party",
    capacity: 6,
    location: "Tel Aviv",
    user: User.fifth,
    date: "01/03/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/lee-myungseong-716836-unsplash.jpg"

  },
   {
    title: "Vietnamese Food Night",
    capacity: 5,
    location: "London",
    user: User.third,
    date: "4/10/2018",
    photo: "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542709451/rawpixel-754045-unsplash_1.jpg"

  },
]
Event.create!(event_attirbutes)

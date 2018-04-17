puts "Creating a user..."

User.destroy_all
Route.destroy_all
Shipment.destroy_all
Order.destroy_all
Customer.destroy_all

User.create!(email: "johan@faer.ch", password: "123456")

puts "User created"

puts "Creating routes..."

Route.create!(
  origin: "Gothenburg Port, Sweden",
  destination: "Shanghai Port, China"
  )

puts "Creating shipments..."

Shipment.create!([{
  status: "open",
  amount: 27
  },
  {
  status: "completed",
  amount: 182
  }])

puts "Creating orders..."

Order.create!([{
  time: "01.00",
  amount: 21
  },
  {
  time: "02.00",
  amount: 23
  },
  {
  time: "03.00",
  amount: 17
  },
  {
  time: "04.00",
  amount: 18
  },
  {
  time: "05.00",
  amount: 9
  },
  {
  time: "06.00",
  amount: 11
  },
  {
  time: "07.00",
  amount: 27
  },
  {
  time: "08.00",
  amount: 33
  },
  {
  time: "09.00",
  amount: 40
  },
  {
  time: "10.00",
  amount: 32
  },
  {
  time: "11.00",
  amount: 35
  },
  {
  time: "12.00",
  amount: 30
  },
  {
  time: "13.00",
  amount: 40
  },
  {
  time: "14.00",
  amount: 42
  },
  {
  time: "15.00",
  amount: 47
  },
  {
  time: "16.00",
  amount: 44
  },
  {
  time: "17.00",
  amount: 48
  },
  {
  time: "18.00",
  amount: 52
  },
  {
  time: "19.00",
  amount: 54
  },
  {
  time: "20.00",
  amount: 42
  },
  {
  time: "21.00",
  amount: 36
  },
  {
  time: "22.00",
  amount: 31
  },
  {
  time: "23.00",
  amount: 28
  },
  {
  time: "24.00",
  amount: 20
  }])

puts "Creating customers..."

Customer.create!([{
  name: "Peter Winsley",
  company: "Freight GmbH",
  login: true,
  shipmentRate: 2140
  },
  {
  name: "Frank Wright",
  company: "Box GmbH",
  login: true,
  shipmentRate: 15377
  },
  {
  name: "John Knight",
  company: "Shipper GmbH",
  login: true,
  shipmentRate: 1503
  },
  {
  name: "Gordon Ramsey",
  company: "Cooking GmbH",
  login: true,
  shipmentRate: 27992
  },
  {
  name: "Guest",
  company: nil,
  login: false,
  shipmentRate: nil
  },
  {
  name: "Guest",
  company: nil,
  login: false,
  shipmentRate: nil
  },
  {
  name: "Guest",
  company: nil,
  login: false,
  shipmentRate: nil
  },
  {
  name: "Guest",
  company: nil,
  login: false,
  shipmentRate: nil
  }])

puts "Finished!"

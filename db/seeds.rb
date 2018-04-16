puts "Creating a user..."

User.destroy_all
Route.destroy_all
Shipment.destroy_all

User.create!(email: "johan@faer.ch", password: "123456")

puts "User created"

puts "Creating routes..."

Route.create!(
  origin: "Gothenburg Port, Sweden",
  destination: "Shanghai Port, China"
  )

puts "Creating shipments..."

Shipment.create!(
  status: "open",
  amount: 27
  )

Shipment.create!(
  status: "complete",
  amount: 182
  )

puts "Finished!"

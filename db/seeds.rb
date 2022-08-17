# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

red_shirt = Item.find_or_create_by(
  name: "Small red shirt",
  color: "red",
  size: "S"
)

blue_shirt = Item.find_or_create_by(
  name: "Small blue shirt",
  color: "blue",
  size: "S"
)

yellow_car = Item.find_or_create_by(
  name: "Bright yellow beetle",
  color: "Yellow",
  size: "XL"
)

montreal_warehouse = Warehouse.find_or_create_by(city: "Montreal")
toronto_warehouse = Warehouse.find_or_create_by(city: "Toronto")
vancouver_warehouse = Warehouse.find_or_create_by(city: "Vancouver")

Inventory.find_or_create_by(
  item: red_shirt,
  warehouse: montreal_warehouse,
  quantity: 5
)

Inventory.find_or_create_by(
  item: red_shirt,
  warehouse: toronto_warehouse,
  quantity: 1
)

Inventory.find_or_create_by(
  item: blue_shirt,
  warehouse: toronto_warehouse,
  quantity: 10
)

Inventory.find_or_create_by(
  item: yellow_car,
  warehouse: vancouver_warehouse,
  quantity: 10
)
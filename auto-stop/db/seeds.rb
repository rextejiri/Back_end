# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD


Car.create([
    { manufacturer_id: 1, type: "Sedan", make: "Mercedes", model: "S550", year: 2020},
    { manufacturer_id: 2, type: "SAV", make: "BMW", model: "X1", year: 2020},
    { manufacturer_id: 3, type: "Cabriolet", make: "Audi", model: "A5", year: 2021},
    { manufacturer_id: 4, type: "SUV", make: "LAND ROVER", model: "RANGE ROVER", year: 2021},
])




=======
Car.create([{ make: "BMW", type: "Car", model: "SUV", manufacturer_id: 2 },{ make: "BMW", type: "Car", model: "SUV", manufacturer_id: 2 },{ make: "BMW", type: "Car", model: "SUV", manufacturer_id: 2 },{ make: "Benz", type: "Car", model: "SUV", manufacturer_id: 1 }])

Manufacturer.create([{ country: "Germany", name: "MERCEDES BENZ" },{ country: "Germany", name: "BMW"}])
>>>>>>> d19cf86fabfec1e02e89f9f85bc3b618d5d5eb42

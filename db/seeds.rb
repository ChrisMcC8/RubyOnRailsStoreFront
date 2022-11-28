# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.destroy_all

Category.create!([{
    name: "None",
    categoryId: 0
},
{
    name: "Stoves",
    categoryId: 1
},
{
    name: "Tents",
    categoryId: 2
},
{
    name: "Sleeping",
    categoryId: 3
},
{
    name: "Cookware",
    categoryId: 5
},
{
    name: "Clothing",
    categoryId: 6
},
{
    name: "TrekkingPoles",
    categoryId: 7
}])

p "Created #{Category.count} categories"


# Product.destroy_all
# Category.create!([{
#     name: "Hubba Hubba",
#     manufacturer: "MSR",
#     price: 500,
#     stock: 4,
#     description: "Lightweight backpacking tent with great livable space.",
#     weight: 40,
#     categoryId: 9
# }])
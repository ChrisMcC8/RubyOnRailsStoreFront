# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Product.destroy_all
Product.create!([{
    name: "Hubba Hubba",
    manufacturer: "MSR",
    price: 500,
    stock: 4,
    description: "Lightweight backpacking tent with great livable space.",
    weight: 40,
    categoryId: 2
},
{
    name: "Mutha Hubba",
    manufacturer: "MSR",
    price: 550,
    stock: 3,
    description: "Lightweight backpacking tent that fits 3 people.",
    weight: 44,
    categoryId: 2
},
{
    name: "Papa Hubba",
    manufacturer: "MSR",
    price: 600,
    stock: 5,
    description: "Lightweight backpacking tent that fits 4 people.",
    weight: 48,
    categoryId: 2
},
{
    name: "Amicus",
    manufacturer: "Soto",
    price: 40,
    stock: 12,
    description: "Lightweight backpacking stove that is great in heavy wind.",
    weight: 4,
    categoryId: 1
},
{
    name: "Pocket Rocket Deluxe",
    manufacturer: "MSR",
    price: 80,
    stock: 9,
    description: "Backpacking stove with a built in igniter, it's great in the wind.",
    weight: 4,
    categoryId: 1
},
{
    name: "Dragonfly 2p",
    manufacturer: "NEMO",
    price: 500,
    stock: 3,
    description: "Ultralight backpacking tent, super comfortable and great features.",
    weight: 34,
    categoryId: 2
},
{
    name: "Dragonfly 3p",
    manufacturer: "NEMO",
    price: 600,
    stock: 2,
    description: "Ultralight tent that fits 3 people in a pinch. Great head room and amazing features.",
    weight: 39,
    categoryId: 2
},
{
    name: "Hornet 2p",
    manufacturer: "NEMO",
    price: 550,
    stock: 3,
    description: "Ultralight semi-freestanding tent that doesn't sacrifice on features.",
    weight: 28,
    categoryId: 2
},
{
    name: "X-Mid 2p",
    manufacturer: "Durston",
    price: 400,
    stock: 6,
    description: "Ultralight non-freestanding tent that sets up with 2 trekking poles. Great liveable space.",
    weight: 36,
    categoryId: 2
},
{
    name: "BRS-3000T",
    manufacturer: "BRS",
    price: 20,
    stock: 21,
    description: "Ultralight titanium stove. Beware this stove isn't great in the wind.",
    weight: 3,
    categoryId: 1
},
{
    name: "Hyperion -6",
    manufacturer: "Thermarest",
    price: 700,
    stock: 3,
    description: "900 fill power down that keeps you warm down to -6C.",
    weight: 32,
    categoryId: 3
},
{
    name: "Titan Kettle",
    manufacturer: "MSR",
    price: 80,
    stock: 8,
    description: "Titanium cookpot with lid. Lid has silicon tab to lift while hot.",
    weight: 4,
    categoryId: 4
},
{
    name: "Baggies Shorts",
    manufacturer: "Patagonia",
    price: 85,
    stock: 6,
    description: "Lightweight men's shorts that dry quicky. Has a built-in liner.",
    weight: 5,
    categoryId: 5
},
{
    name: "Alpine FLZ",
    manufacturer: "Black Diamond",
    price: 150,
    stock: 2,
    description: "Lightweight trekking poles that fold into thirds. Comes with removable snow baskets for trekking in deep snow.",
    weight: 12,
    categoryId: 6
}
])

p "Created #{Product.count} products!"
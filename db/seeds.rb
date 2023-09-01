# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p "seeding..."

Rental.destroy_all
Tool.destroy_all
User.destroy_all
Category.destroy_all

user = User.create(email: "tester@test.test", password:"madjoubilov", first_name:"Tes", last_name: "Ter")
user_2 = User.create(email: "walid.majdoubi@hotmail.fr", password:"walidmajdoubi", first_name: "Walid", last_name: "Majdoubi")
user_3 = User.create(email: "baboon@zoo.com", password: "baboon", first_name: "John", last_name: "Baboon", location: " Rio de Janeiro Zoo", picture_url: "https://i.natgeofe.com/n/161b508c-0d2e-4c59-8284-f759f5ab12d6/4843185_square.jpg")

hand_tools = Category.create(name: "Hand Tools", picture_url: "https://services.ibo.com/media/v1/products/images/e74c3b1f-4202-4c38-9b06-ef5da2fdd4ea/black--decker-108-pcs-hand-tool-set-1.jpeg",
  description: "Hand tools are simple tools which you use with your hands , and which are usually not powered also Hand tools is any tool that is powered by hand rather than a motor examples are chopping,
  chiseling, , cutters, files, striking tools, struck or hammered tools, screwdrivers, vises, clamps, snips, saws, and drills.")

power_tools = Category.create(name: "Power Tools", picture_url: "https://s42814.pcdn.co/wp-content/uploads/2020/12/best_power_tool_sets_hero_image-scaled.jpeg.optimal.jpeg",
  description: "A power tool is a tool that is actuated by an additional power source and mechanism other than the solely manual labor used with hand tools. The most common types of power tools use
  electric motors. Internal combustion engines and compressed air are also commonly used.")

weldering_and_soldering_tools = Category.create(name: "Weldering & Soldering Tools", picture_url: "https://dam.thdstatic.com/content/production/Wvb7Xpwwj48XVl5KlLetZw/ZfzIpTxjN83R5ll-s8ctQQ/optimizedFile/2023_Milwaukee_2_302022408.jpg",
  description: "Welding, brazing, and soldering equipment is used to join two materials—often metals—together. The equipment itself may consist of a complete system or station, power source, gun or torch,
  or a monitor/controller.")

air_compressor_tools = Category.create(name: "Air Compressor Tools", picture_url: "https://dam.thdstatic.com/content/production/Mmbri5EoqZzwtz7ydcd_cw/OhA_1HoE9mOlXjCVJ59H-g/optimizedFile/6a759294-8560-43c8-bb29-7c2b59406fd3_1002714648_1004093300_1001487189_911625_PSD-resize.jpg",
  description: "Air compressor power tools, also called pneumatic tools, are generally faster, lighter and more powerful than traditional power tools. They use a concentration of air to power the tool. The key to choosing the best air compressor is to match
  the unit to the job demands.")

outdoor_power_equipment = Category.create(name: "Outdoor Power Equipment", picture_url: "https://contentgrid.thdstatic.com/hdus/en_US/DTCCOMNEW/fetch/NexGen/ContentPage/Outdoor-Power-Guides-MOBv4.jpg", description: "Outdoor Power Equipment consist of small motors or engines primarily
  used for exterior service. The residential and commercial users use OPE for various tasks such as landscaping and maintaining lawns, gardens, and golf courses.")


# Tool.create(name: "perceuse", user: user, category: category)

hammer = Tool.create(name: "Hammer", description: "Estwing Hammer - 20 oz Straight Rip Claw with Smooth Face & Genuine Leather Grip - E20S" , picture_url: "https://m.media-amazon.com/images/I/613yLITO21L._AC_SL1500_.jpg", price: 20, category: hand_tools, user: user)
lawnmower = Tool.create(name: "Lawnmower", description: "Worx WG779 40V Power Share 4.0Ah 14 Cordless Lawn Mower Batteries & Charger Included", picture_url: "https://m.media-amazon.com/images/I/71UqocRLEML._AC_SL1500_.jpg" , price: 100, category:outdoor_power_equipment, user: user_2)
air_compressor = Tool.create(name: "Air compressor", description: "AstroAI Tire Inflator Portable Air Compressor Air Pump for Car Tires - Car Accessories, 12V DC Auto Pump with Digital Pressure Gauge, 100PSI with Emergency LED Light for Bicycle, Balloons",
  picture_url: "https://m.media-amazon.com/images/I/71eHittCtZL._AC_SX679_.jpg", price: 50, category: air_compressor_tools, user: user)
mig_welder = Tool.create(name: "Mig Welder", description: "ARCCAPTAIN 130A MIG Welder, 110V Flux Core MIG Welder/Lift TIG/Stick 3 in 1 Welding Machine with Synergy, IGBT Inverter Portable Gasless Welder Equipment with Welding Gun and 2lb Welding Wire",
  picture_url: "https://m.media-amazon.com/images/I/717mPYgxY0L._AC_SX679_.jpg", price: 100, category: weldering_and_soldering_tools, user: user_2)
power_drill = Tool.create(name: "Power Drill", description: "GardenJoy Cordless Power Drill Set: 21V Electric Drill with Fast Charger 3/8-Inch Keyless Chuck 2 Variable Speed 24+1 Torque Setting Power Tools Kit and 30pcs Drill/Driver Bits",
  picture_url: "https://m.media-amazon.com/images/I/71UyYLHK1ZL._AC_SX679_.jpg", price: 45, category: power_tools, user: user)
screwdriver = Tool.create(name: "Screwdriver", description: "Klein Tools 32305 Multi-bit Ratcheting Screwdriver, 15-in-1 Tool with Phillips, Slotted, Square, Torx and Combo Bits and 1/4-Inch Nut Driver",
  picture_url: "https://m.media-amazon.com/images/I/51jA6YSPgmL._AC_SX679_.jpg", price: 20, category: hand_tools, user: user_3)
wrench = Tool.create(name: "Wrench", description: "Crescent 4 Adjustable Black Oxide Wrench - Carded - AT24VS",
  picture_url: "https://m.media-amazon.com/images/I/41lJL+WoCNL._AC_SX679_.jpg", price: 10, category: hand_tools, user: user)
pliers = Tool.create(name: "Pliers", description: "CHANNELLOCK HD-1 Ultimate 4-Piece Pliers Set | Made in USA | Forged High Carbon Steel | Includes Tongue & Groove, Diagonal Cutting, Long Nose and Slip Joint Pliers",
  picture_url: "https://m.media-amazon.com/images/I/71qAV-JUc8L._AC_SX679_.jpg", price: 12, category: hand_tools, user: user_2)
multi_tool = Tool.create(name: "Multitool", description: "Ryobi 18V Multi Tool", picture_url: "https://m.media-amazon.com/images/I/31ycvmDWQ9L._AC_.jpg",
  price: 50, category: power_tools, user: user)


Rental.create!(user: user, tool: lawnmower, comment: "we love mowing the amazon forest", start_date: "2023-08-20", end_date: "2023-08-01")
Rental.create!(user: user, tool: mig_welder, comment: "i promise the welder will not lose fingers... this time", start_date: "2023-08-20", end_date: "2023-10-20")
Rental.create!(user: user_2, tool: hammer, comment: "bang bang bang bang bang bang man i loveee hammers", start_date: "2023-08-20", end_date: "2023-09-20")
Rental.create!(user: user_2, tool: air_compressor, comment: "what is even air compressor anyway?", start_date: "2023-08-20", end_date: "2023-08-24")
Rental.create!(user: user_2, tool: power_drill, comment: "this is not a dr... actually", start_date: "2023-08-20", end_date: "2023-08-28")


Review.create(content: "This lawn mower cut every single blade of grass in my garden.", rating: 5, tool: lawnmowner, user: user_3)
Review.create(content: "A very strong hammer, excellent grip", rating: 4, tool: hammer, user: user_2)
Review.create(content: "Good, but didn't drill all the way through to my neighbor's as I hoped it would", rating: 3, tool: power_drill, user: user)
Review.create(content: "Never thought I would be welding but renting this tool helped me discover my real passion in life", rating: 4, tool: mig_welder, user: user)
Review.create(content: "Cutting the grass in my field with this lawnmower evoked beautiful smells of grass, dirt and petrichor", rating: 5, tool: lawnmowner, user: user_2)

p "seeding complete!"

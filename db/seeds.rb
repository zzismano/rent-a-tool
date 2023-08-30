# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Category.destroy_all

user = User.create(email: "tester@test.test", password:"madjoubilov")
user_2 = User.create(email: "walid.majdoubi@hotmail.fr", password:"walidmajdoubi")

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

Tool.create(name: "Hammer", description: "Estwing Hammer - 20 oz Straight Rip Claw with Smooth Face & Genuine Leather Grip - E20S" , picture_url: "https://m.media-amazon.com/images/I/613yLITO21L._AC_SL1500_.jpg", price: 20, category: hand_tools, user: user)
Tool.create(name: "Lawnmower", description: "Worx WG779 40V Power Share 4.0Ah 14 Cordless Lawn Mower Batteries & Charger Included", picture_url: "https://m.media-amazon.com/images/I/71UqocRLEML._AC_SL1500_.jpg" , price: 100, category:outdoor_power_equipment, user: user_2)
Tool.create(name: "Air compressor", description: "AstroAI Tire Inflator Portable Air Compressor Air Pump for Car Tires - Car Accessories, 12V DC Auto Pump with Digital Pressure Gauge, 100PSI with Emergency LED Light for Bicycle, Balloons",
  picture_url: "https://m.media-amazon.com/images/I/71eHittCtZL._AC_SX679_.jpg", price: 50, category: air_compressor_tools, user: user)
Tool.create(name: "Mig Welder", description: "ARCCAPTAIN 130A MIG Welder, 110V Flux Core MIG Welder/Lift TIG/Stick 3 in 1 Welding Machine with Synergy, IGBT Inverter Portable Gasless Welder Equipment with Welding Gun and 2lb Welding Wire",
  picture_url: "https://m.media-amazon.com/images/I/717mPYgxY0L._AC_SX679_.jpg", price: 100, category: weldering_and_soldering_tools, user: user_2)
Tool.create(name: "Power Drill", description: "GardenJoy Cordless Power Drill Set: 21V Electric Drill with Fast Charger 3/8-Inch Keyless Chuck 2 Variable Speed 24+1 Torque Setting Power Tools Kit and 30pcs Drill/Driver Bits",
  picture_url: "https://m.media-amazon.com/images/I/71UyYLHK1ZL._AC_SX679_.jpg", price: 45, category: power_tools, user: user)

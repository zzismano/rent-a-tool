# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.create(name: "Hand Tools", picture_url: "https://services.ibo.com/media/v1/products/images/e74c3b1f-4202-4c38-9b06-ef5da2fdd4ea/black--decker-108-pcs-hand-tool-set-1.jpeg",
  description: "Hand tools are simple tools which you use with your hands , and which are usually not powered also Hand tools is any tool that is powered by hand rather than a motor examples are chopping,
  chiseling, , cutters, files, striking tools, struck or hammered tools, screwdrivers, vises, clamps, snips, saws, and drills.")

Category.create(name: "Power Tools", picture_url: "https://s42814.pcdn.co/wp-content/uploads/2020/12/best_power_tool_sets_hero_image-scaled.jpeg.optimal.jpeg",
    description: "A power tool is a tool that is actuated by an additional power source and mechanism other than the solely manual labor used with hand tools. The most common types of power tools use
    electric motors. Internal combustion engines and compressed air are also commonly used.")

Category.create(name: "Weldering & Soldering Tools", picture_url: "https://dam.thdstatic.com/content/production/Wvb7Xpwwj48XVl5KlLetZw/ZfzIpTxjN83R5ll-s8ctQQ/optimizedFile/2023_Milwaukee_2_302022408.jpg",
    description: "Welding, brazing, and soldering equipment is used to join two materials—often metals—together. The equipment itself may consist of a complete system or station, power source, gun or torch,
    or a monitor/controller.")

Category.create(name: "Air Compressor Tools", picture_url: "https://dam.thdstatic.com/content/production/Mmbri5EoqZzwtz7ydcd_cw/OhA_1HoE9mOlXjCVJ59H-g/optimizedFile/6a759294-8560-43c8-bb29-7c2b59406fd3_1002714648_1004093300_1001487189_911625_PSD-resize.jpg",
  description: "Air compressor power tools, also called pneumatic tools, are generally faster, lighter and more powerful than traditional power tools. They use a concentration of air to power the tool. The key to choosing the best air compressor is to match
  the unit to the job demands.")

Category.create(name: "Outdoor Power Equipment", picture_url: "https://contentgrid.thdstatic.com/hdus/en_US/DTCCOMNEW/fetch/NexGen/ContentPage/Outdoor-Power-Guides-MOBv4.jpg", description: "Outdoor Power Equipment consist of small motors or engines primarily
  used for exterior service. The residential and commercial users use OPE for various tasks such as landscaping and maintaining lawns, gardens, and golf courses.")

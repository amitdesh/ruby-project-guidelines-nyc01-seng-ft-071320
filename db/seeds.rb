require_relative '../lib/user'
require_relative '../lib/gift'
require_relative '../lib/item'

User.delete_all
Item.delete_all
Gift.delete_all

User.create(name: "David", dob: "1983/10/19", password: "code")
User.create(name: "Amit", dob: "1995/05/01")
User.create(name: "Roy", dob: "1985/09/25")
User.create(name: "Chelsea", dob: "1987/10/12")
User.create(name: "Jordan", dob: "1985/08/23")

Item.create(name: "Arc Soundbar", brand: "Sonos", price: 799.99, category: "Electronics", description: 
"Transform your music or watching experience with this Sonos Arc Premium smart soundbar. " + 
"The 3D sound coupled with Dolby Atmos deliver an immersive audio output, while the Trueplay " +
"tuning technology adapts to room acoustics for accurate localization. This low-profile Sonos Arc " +
"Premium smart soundbar has 11 high-performance drivers and elliptical woofers for powerful rich " +
"bass, and the voice control support offers hassle-free control.")

Item.create(name: "AirPods Pro", brand: "Apple", price: 249.99, category: "Electronics", description: 
"Active noise cancellation for immersive sound. Transparency mode for hearing and connecting " +
"with the world around you. A more customizable fit for all-day comfort. Sweat- and water-resistant. "+
"All in a super light, in-ear headphone that's easy to set up with all your Apple devices.")

Item.create(name: "Clue Game of Thrones Board Game", brand: "USAOPOLY", price: 74.66, category: "Games", description: 
"High treachery and betrayal are behind the two mysteries to solve in Game of Thrones Clue. Featuring "+
"a double-sided game board, players choose to solve the murder mystery in the Red Keep or in Meereen. "+
"Who was responsible for plotting the murder? What weapon was used and where did the crime take place?")

Item.create(name: "Pure Zen Tea Tumbler with Infuser", brand: "Pure Zen Tea", price: 34.95, category: "Home & Kitchen", description: 
"Now, there is no need to wait for your tea to steep before rushing out the door every morning. "+
"You just drop your favorite loose leaf blend, or even ready-made teabags into the infuser basket, "+
"fill the tumbler with water, and you are ready to go.")

Item.create(name: "Stormtrooper Waffle Maker", brand: "Uncanny Brands", price: 61.58, category: "Home & Kitchen", description: 
"All fans of the Galactic Empire and Imperial Army will love our Star Wars Stormtrooper Waffle Maker. "+
"Take breakfast to a galaxy far, far away with this non-stick waffle maker. It makes tasty waffles your way, "+
"with five temperature settings that let you make waffles quickly and easily. Whether you like them brown and "+
"crispy or tender and golden, the regulated thermostat and weighted lid ensure even heating, while the dual "+
"indicator lights make adding batter and removing the finished product easy. More than just a waffle iron, "+
"this can also be used to make eggs, brownies, cakes, quesadillas or even as a Stormtrooper sandwich press. "+
"Waffle maker is compact, easy to use and easy to clean.")

Item.create(name: "The Travel Book: A Journey Through Every Country in the World", brand: "Lonely Planet", price: 45.00, category: "Books", description: 
"Take a journey through every country in the world. 850 images. 230 countries. One complete picture. All brand.create, "+
"incredible photography illustrates each country, depicting what life is like in each nation from photographic "+
"portraits of people, beautiful landscape photographs and vibrant street photography. This premium packaged 448-page "+
"book with beautiful rainbow foil on the cover will make an impressive gift.")
Item.create(name: "Wood Grain Essential Oil Diffuser", brand: "InnoGear", price: 19.99, category: "Home & Health", description: 
"InnoGear diffusers comprise the ultrasonic technology that breaks up essential oil into microparticles, which "+
"improves the diffusion process since essential oils are not heated. Use it to improve your home's air quality, "+
"cover the smell of pets or smoking, and protect you family from excessively dry season. Incorporate the benefits "+
"of aromatherapy into your everyday lifestyle. The elegant wood grain design fits in with the most decor and brings "+
"a close-to-nature feeling to your home or office.")

Item.create(name: "Scratch Off Wall Map of The USA", brand: "Maps International", price: 23.99, category: "Office & Home", description: 
"Our brilliant concept map of the US allows visited destinations to be scratched off, revealing the beautifully styled up to "+
"date USA poster map underneath. The perfect wall map poster gift for travel enthusiasts, the scratch off map design allows "+
"complete personalization of the large map of the US to display a unique travel story. Just grab a coin and scratch off all "+
"the states you’ve visited, creating your own personalized, continually changing USA wall map. The scratch off USA map features "+
"states, National Parks and cities, making the perfect travel map – scratch off your favorite spots!")

Item.create(name: "Magnetic Levitating Bluetooth Speaker", brand: "Infinity Orb", price: 97.99, category: "Electronics", description: 
"Infinity Orb levitating speaker is not only a unique designed levitating Bluetooth speaker, but also a beautiful piece of artwork. "+
"The Infinity Orb levitates in air at 1/2inch height above its magnetic base. The base illuminates continuously different color LED "+
"lights. Play music up to 8 hours at 70% volume. It is an awesome high tech gadget and it is also a perfect gift to friends.")

Item.create(name: "Wave Wine Rack", brand: "Birando", price: 44.99, category: "Home", description: "Looking for a stylish and "+
"innovative way to store your wine at home? Look no further than our innovative Wave Wine Racks. These slim yet sturdy racks "+
"have quickly become a popular structure for wine bottle storage in homes due to their aesthetically pleasing looks and utter "+
"functionality. Strong and Modern Design The Wave Wine Racks are attached to one another and structured with stability and strength. "+
"This modern twist on the traditional wine rack allows you to adapt the racks capacity according to the number of bottles you want "+
"to stack. ")

Item.create(name: "Humans of New York : Stories", brand: "Brandon Stanton", price: 17.75, category: "Books", description: 
"In the summer of 2010, photographer Brandon Stanton began an ambitious project -to single-handedly create a photographic "+
"census of New York City. The photos he took and the accompanying interviews became the blog Humans of New York. His audience "+
"steadily grew from a few hundred followers to, at present count, over eighteen million. In 2013, his book Humans of New York, "+
"based on that blog, was published and immediately catapulted to the top of the NY Times Bestseller List where it has appeared "+
"for over forty-five weeks.")

Gift.create(occasion: "Birthday", giver_id: User.all[0].id, receiver_id: User.all[1].id, item_id: Item.all[1].id)
Gift.create(occasion: "Birthday", giver_id: User.all[2].id, receiver_id: User.all[0].id, item_id: Item.all[1].id)
Gift.create(occasion: "Birthday", giver_id: User.all[1].id, receiver_id: User.all[3].id, item_id: Item.all[3].id)
Gift.create(occasion: "Wedding", giver_id: User.all[2].id, receiver_id: User.all[4].id, item_id: Item.all[4].id)
Gift.create(occasion: "Anniversary", giver_id: User.all[3].id, receiver_id: User.all[0].id, item_id: Item.all[0].id)
Gift.create(occasion: "Birthday", giver_id: User.all[1].id, receiver_id: User.all[3].id, item_id: Item.all[6].id)
Gift.create(occasion: "Wedding", giver_id: User.all[2].id, receiver_id: User.all[4].id, item_id: Item.all[8].id)
Gift.create(occasion: "Anniversary", giver_id: User.all[3].id, receiver_id: User.all[0].id, item_id: Item.all[10].id)
Gift.create(occasion: "Graduation", giver_id: User.all[4].id, receiver_id: User.all[2].id, item_id: Item.all[7].id)
Gift.create(occasion: "Anniversary", giver_id: User.all[3].id, receiver_id: User.all[0].id, item_id: Item.all[1].id)

# Gift.create(occasion: "Birthday", giver_id: User.all[1].id, receiver_id: User.all[3].id, item_id: 1)
# Gift.create(occasion: "Wedding", giver_id: User.all[2].id, receiver_id: User.all[4].id, item_id: 4)
# Gift.create(occasion: "Birthday", giver_id: User.all[1].id, receiver_id: User.all[3].id, item_id: 4)
# Gift.create(occasion: "Wedding", giver_id: User.all[2].id, receiver_id: User.all[4].id, item_id: 4)
# Gift.create(occasion: "Anniversary", giver_id: User.all[3].id, receiver_id: User.all[0].id, item_id: 5)
# Gift.create(occasion: "Graduation", giver_id: User.all[4].id, receiver_id: User.all[2].id, item_id: 6)



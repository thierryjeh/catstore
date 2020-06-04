# Reset tables in the database
Item.destroy_all
User.destroy_all
Order.destroy_all
OrderItem.destroy_all
Cart.destroy_all

# Useful variables for the seeding
users = []
items = []
orders = []

# Seed Items
Item.create!(
      title: "0193.jpg",
      description: "Haha since when Willy ronis was shooting with a digital Ricoh ?? That picture was shot in my hometown in britanny not in Paris as it said on this website...wakoo22",
      image_url: "https://static.boredpanda.com/blog/wp-content/uploads/2014/08/cat-black-and-white-photography-21.jpg",
      price: rand(65..99))

Item.create!(
      title: "34501",
      description: "©Keren Segev",
      image_url: "https://static.boredpanda.com/blog/wp-content/uploads/2014/08/cat-black-and-white-photography-32.jpg",
      price: rand(65..99))

Item.create!(
      title: "Pals by Michiyo Clark",
      description: "This cat Muta was my son's best buddy. He has been missing for about 4 months and we think he went to a better place now. Such a good cat to spend 15 years with him. Be happy wherever you are, Muta!",
      image_url: "https://static.boredpanda.com/blog/wp-content/uploads/2014/08/cat-looking-at-you-black-and-white-photography-102.jpg",
      price: rand(65..99))

Item.create!(
      title: "Sans titre",
      description: "©Pierre Adnin",
      image_url:  "https://static.boredpanda.com/blog/wp-content/uploads/2014/08/cat-looking-at-you-black-and-white-photography-5.jpg",
      price: rand(65..99))

Item.create!(
      title: "Black Cat, White Floor by Sebastian Gruia",
      description: "Very nice black shadows image!",
      image_url: "https://static.boredpanda.com/blog/wp-content/uploads/2014/08/cat-black-and-white-photography-33.jpg",
      price: rand(65..99))

Item.create!(
      title: "Doron Nissim Wild Cat by Doron Nissim",
      description: "Newborn",
      image_url:  "https://static.boredpanda.com/blog/wp-content/uploads/2014/08/cat-looking-at-you-black-and-white-photography-103.jpg",
      price: rand(65..99))

Item.create!(
      title: "Circus Cat",
      description: "The Savitsky Cats are now scampering through New York City's Lincoln Center as one of the new star attractions of the Big Apple Circus.",
      image_url: "https://media.npr.org/assets/img/2019/11/13/bac-savitsky-cats3_wide-58fcf78e5753ca07f330678e036af7365c85cced-s800-c85.jpg",
      price: rand(65..99))

Item.create!(
      title: "J. Ota",
      description: "Cat Bond",
      image_url: "https://static.boredpanda.com/blog/wp-content/uploads/2014/08/cat-looking-at-you-black-and-white-photography-114.jpg",
      price: rand(65..99))

Item.create!(
      title: "FotoLesnik Getty Images Plus",
      description: "Obviously they don't need to wear masks",
      image_url: "https://www.sciencealert.com/images/2020-04/processed/CanWeGetRonaFromPets_1024.jpg",
      price: 0)

Item.create!(
      title: "Dalí Atomicus",
      description: "Before photographer Philippe Halsman and Surrealist Salvador Dalí settled on the idea of tossing three cats into the air for the photograph Dalí Atomicus (1948), the Spanish artist suggested they blow up a duck using dynamite. Considering it took 26 attempts to pull off the picture of a levitating Dalí in a chaotic airborne scene, Halsman’s insistence against the first idea was decidedly the best course of action.",
      image_url: "https://d7hftxdivxxvm.cloudfront.net/?resize_to=width&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2FpTm2h5nERnYwcT6w6oBHyQ%2Flarger.jpg&width=1200&quality=80",
      price: 5552.94)


# Seed Users
10.times do |x|
  user = User.create!(
      email: Faker::Name.first_name + "@yopmail.com" ,
      password: "1234567"
  )

  users << user

  # Seed Cart
  Cart.create!(user_id: user.id)
 
end

# Seed Order
30.times do |x|
  orders << Order.create!(
      user: users.sample,
      stripe_customer_id: Faker::Code.ean
  )
  
end

# Seed OrderItem
30.times do |x|
  OrderItem.create!(
      order: orders.sample,
      item: items.sample,
      quantity: rand(1...5),
      total_price: rand(5...200)
  )

end

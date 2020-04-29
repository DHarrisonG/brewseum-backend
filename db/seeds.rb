# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'GoodBoi', password_digest: 'datgoodboi', image: 'https://i.imgur.com/8KrqXXw.jpg', about: 'Just a heckin good doggo that can type!')

Bar.create(
    state: "Alabama", 
    city: "Mobile", 
    name: "T.P. Crockmeirs", 
    opened: 1875, 
    overview: "It should surprise absolutely nobody that the oldest bar in Alabama was started by a 
    plantation owner with large holdings, and a loyal Southerner who fought in General Lee’s army. 
    In New York this would likely lead to your bar getting picketed (unless you put it in Williamsburg to be ironic), 
    but in Alabama it makes you one of the most popular spots in Mobile.", 
    image: "https://tpcrockmiers.com/wp-content/uploads/2017/11/crockmier-balcony.jpg",
    latitude: 30.691285,
    longitude: -88.044098)
Bar.create(
    state: "Alaska", 
    city: "Kodiak", 
    name: "B&B Bar", 
    opened: 1908, 
    overview: "When the sun doesn’t come out for a month, it’s nice to have a friendly dive bar 
    where you can go to drink until sunrise... in a few weeks. This little spot in the largest city on 
    Kodiak Island (is there more than one city?) is exactly that dive bar, and it proudly displays the oldest 
    liquor license in the Last Frontier.", 
    image: "https://thumbor.thedailymeal.com/IZzrgZnx1_7MBEZEhNoXM8hWRyc=/870x565/filters:focal(600x389:601x390):format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/copy/Alaska_B_and_B_Bar.jpg",
    latitude: 57.787732,
    longitude: -152.413208)
Bar.create(
    state: "Arizona", 
    city: "Prescott", 
    name: "The Palace", 
    opened: 1877, 
    overview: "About as close to an authentic Wild West saloon as you're going to get, 
    this Arizona watering hole claims Doc Holliday and the Earp brothers as early patrons. 
    While a fire in 1900 engulfed the street known as Whiskey Row and destroyed the original 
    building, loyal patrons reportedly rescued the hand carved bar; you can still sidle on up to it today.", 
    image: "https://media-cdn.tripadvisor.com/media/photo-s/14/a4/c5/61/the-fantastic-bar.jpg",
    latitude: 34.541322,
    longitude: -112.470326)



UserBar.create(user_id: 1, bar_id: 1)

Comment.create(user_id: 1, bar_id: 1, comment: "I'm a dog, I have no idea what's going on", likes: 14)
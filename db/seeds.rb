# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'GoodBoi', password_digest: 'datgoodboi', image: 'https://i.imgur.com/8KrqXXw.jpg', about: 'Just a heckin good doggo that can type!')

Bar.create(name: 'ye olde bar', opened: '1868', overview: "it's old as fuck", image: '')

UserBar.create(user_id: 1, bar_id: 1)

Comment.create(user_id: 1, bar_id: 1, comment: "I'm a dog, I have no idea what's going on", likes: 14)
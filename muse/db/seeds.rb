# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# exit
Artist.destroy_all
Song.destroy_all
rihanna = Artist.create(name: "Rihanna", albums: 6, hometown: "Barbados", img: "http://mccarthyamp.com/wp-content/uploads/2016/02/23445669273_bfc7c4062b_b.jpg")
taylor = Artist.create(name: "Taylor Swift", albums: 8, hometown: "Nashville", img: "https://upload.wikimedia.org/wikipedia/en/f/f6/Taylor_Swift_-_1989.png")
billy = Artist.create(name: "Billy Joel", albums: 14, hometown: "Long Island", img: "https://images-na.ssl-images-amazon.com/images/I/81RgoBLQOKL._SY355_.jpg")
drake =Artist.create(name: "Drake", albums: 4, hometown: "Toronto", img: "http://images.complex.com/complex/image/upload/t_in_content_image/drake-thank-me-later-album-cover_o6ek33.jpg")
beyonce = Artist.create(name: "Beyonce", albums: 6, hometown: "Houston", img: "http://www.fuse.tv/image/571c26a6017704456e00001b/816/545/beyonce-lemonade-album-cover-full.jpg")
miley = Artist.create(name: "Miley Cyrus", albums: 6, hometown: "London", img: "http://www.fuse.tv/image/571c26a6017704456e00001b/816/545/beyonce-lemonade-album-cover-full.jpg")

Song.create(artist_id: rihanna.id, title: "Umbrella", genre: "Pop")
Song.create(artist_id: rihanna.id, title: "Too much rails", genre: "Pop")
Song.create(artist_id: taylor.id, title: "Shake It Off", genre: "Pop")
Song.create(artist_id: billy.id, title: "Pressure", genre: "Rock")
Song.create(artist_id: drake.id, title: "Hotline Bling", genre: "Rap")
Song.create(artist_id: beyonce.id, title: "Lemonade", genre: "R&B")
Song.create(artist_id: miley.id, title: "too much ruby", genre: "R&B")
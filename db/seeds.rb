require 'json'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)

ingredients['drinks'].each do |record|
  Ingredient.create!(
    name: record['strIngredient1']
  )
end

image_url = URI.open("https://images.unsplash.com/photo-1547495706-7485ef02d47d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
cocktail = Cocktail.create!(
  name: "Mojito"
)
cocktail.photo.attach(io: image_url, filename: 'nes.png', content_type: 'image/png')

image_url = URI.open("https://images.unsplash.com/photo-1453825012366-3738046cb6c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80")
cocktail = Cocktail.create!(
  name: "Gin"
)
cocktail.photo.attach(io: image_url, filename: 'nes.png', content_type: 'image/png')

image_url = URI.open("https://images.unsplash.com/photo-1558950334-8d04704332f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
cocktail = Cocktail.create!(
  name: "Martini Lemon",
)
cocktail.photo.attach(io: image_url, filename: 'nes.png', content_type: 'image/png')

image_url = URI.open("https://images.unsplash.com/photo-1511715112108-9acc6c3ff61f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
cocktail = Cocktail.create!(
  name: "Lichy & Mint",
)
cocktail.photo.attach(io: image_url, filename: 'nes.png', content_type: 'image/png')

image_url = URI.open("https://images.unsplash.com/photo-1558383738-8e44bbf6b093?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
cocktail = Cocktail.create!(
  name: "Peach Vodka & Strawberries",
)
cocktail.photo.attach(io: image_url, filename: 'nes.png', content_type: 'image/png')

image_url = URI.open("https://images.unsplash.com/photo-1589661431228-c5319d8e904f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
cocktail = Cocktail.create!(
  name: "Abricot Gin Tonic",
)
cocktail.photo.attach(io: image_url, filename: 'nes.png', content_type: 'image/png')

image_url = URI.open("https://images.unsplash.com/photo-1589881418399-b974d8bebef8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
cocktail = Cocktail.create!(
  name: "Banana & Lemon",
)
cocktail.photo.attach(io: image_url, filename: 'nes.png', content_type: 'image/png')

image_url = URI.open("https://images.unsplash.com/photo-1575761998883-4a6a7a39711f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
cocktail = Cocktail.create!(
  name: "Ananas & Lemon Beer",
)
cocktail.photo.attach(io: image_url, filename: 'nes.png', content_type: 'image/png')

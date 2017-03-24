# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beer.create!(name: "Heady Topper", style: "Imperial IPA", abv: 8.0, description:"Customers are urged to drink directly from the Heady Topper can. Heady Topper is a double India Pale Ale brewed by The Alchemist in Stowe, VT. It is unfiltered and contains 8% ABV, with hints of citrus flavors. Unpasteurized, it is kept refrigerated by authorized retailers until point of sale.", brewery_id: 1, account_id: nil )

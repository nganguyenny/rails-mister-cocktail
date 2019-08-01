require "json"
require "rest-client"

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

# https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list

ingredients = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
repos = JSON.parse(ingredients)

repos["drinks"].each do |i|
  ingredient = Ingredient.create(name: i["strIngredient1"])
  ingredient.save
end
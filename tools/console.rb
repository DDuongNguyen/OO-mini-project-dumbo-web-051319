require_relative '../config/environment.rb'

ingredient1 = Ingredient.new("eggs")
ingredient2 = Ingredient.new("salt")
rec_ing1 = RecipeIngredient.new("salt")
rec_ing2 = RecipeIngredient.new("flour")
recipe1 = Recipe.new('omlette')
recipe2 = Recipe.new("biscuit")
user1 = User.new('joe')
user2 = User.new('yoon')
recipe_card1 = user1.add_recipe_card(recipe1, 'may', 5 )
recipe_card2 = user1.add_recipe_card(recipe2, 'may', 1 )
recipe_card3 = user2.add_recipe_card(recipe2, 'june', 3 )
binding.pry

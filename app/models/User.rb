require 'pry'
class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    recipe_card = RecipeCard.new(recipe, date, rating)
    # binding.pry
    recipe_card.user = self
    return recipe_card
  end

  def recipes
    RecipeCard.all.map do |recipe_card|
      recipe_card.recipe
      # binding.pry
    end
  end










end

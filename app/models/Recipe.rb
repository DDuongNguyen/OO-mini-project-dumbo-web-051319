class Recipe
  attr_accessor :name, :ingredients
  @@all = []

  def initialize(name)
    @name = name
    @ingredients = []
    @@all << self

  end

  def self.all
    @@all
  end

# def self.most_popular
#
# end

def users
  users_arr = []
  RecipeCard.all.each do |recipe_card|
    # binding.pry
    if self == recipe_card.recipe
      users_arr << recipe_card.user
    end
    # binding.pry
  end
  return users_arr
  # binding.pry
end

  # def ingredients
  #   RecipeIngredient.ingredients
  # end

# def allergens
#
# end

  def add_ingredients(ingredient_arr)
    ingredient_arr.each do |ingredient|
      @ingredients << ingredient
    end
    @ingredients
  end

end

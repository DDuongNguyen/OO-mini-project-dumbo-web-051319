class RecipeIngredient

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredient
    # binding.pry
    Ingredient.all.select {|ingredient| ingredient.name == self.name}
  end

  # def recipe
  #   # binding.pry
  #   Recipe.all.select do |recipe|
  #     binding.pry
  #     recipe.name == self.name
  #   end
  # end

end

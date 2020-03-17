class RecipeIngredient
  attr_accessor :ingredient, :recipe
  @@all = []

  def initialize(recipe_obj, ingredient_obj)
    @recipe = recipe_obj
    @ingredient = ingredient_obj
    @@all << self
  end

  def self.all
    @@all
  end
end

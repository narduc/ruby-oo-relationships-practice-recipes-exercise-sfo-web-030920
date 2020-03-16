class User
  attr_accessor :name, :recipe, :allergy

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @alergias = []
  end

  def recipes
    RecipeCard.all.select { |recipe| recipe.user == self }
  end

  def add_recipe_card(recipe_obj, date, rating)
    recipe_card = RecipeCard.new(recipe_obj, self, date, rating)
    recipe_card
  end

  def declare_alergy(ingredient_obj)
    allergy = Allergy.new(self, ingredient_obj)
    @alergias << allergy
    allergy
  end

  def top_three_recipes
    user_recipes = recipes
    user_recipes.sort_by! { |recipe| recipe.rating }.take(3).reverse
  end

  def most_recent_recipe
    recipes.last
  end

  def allergens
    Allergy.all.select { |allergy| allergy.ingredient.name if allergy.user.name == self.name }
  end

  def self.all
    @@all
  end
end

# ### `User`
# Build the following methods on the User class
# - `User#declare_allergy`
# should accept an`Ingredient` instance as an argument, and create a new `Allergy` instance for this `User` and the given `Ingredient`
# - `User#allergens`
# should return all of the ingredients this user is allergic to
# - `User#top_three_recipes`
# should return the top three highest rated recipes for this user.
# - `User#most_recent_recipe`
# should return the recipe most recently added to the user's cookbook.

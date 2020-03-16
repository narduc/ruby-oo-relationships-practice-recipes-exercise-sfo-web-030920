class RecipeCard
  attr_reader :date, :rating
  attr_accessor :user, :recipe

  @@all = []

  def initialize(recipe_obj, user_obj, date, rating)
    @recipe = recipe_obj
    @user = user_obj
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
end

# ### `RecipeCard`
# A RecipeCard is the join between a user instance and a recipe instance.  This is a has-many-through relationship.
# Build the following methods on the RecipeCard class:

# - `RecipeCard.all`
# should return all of the RecipeCard instances
# - `RecipeCard#date`
# should return the date of the entry
# - `RecipeCard#rating`
# should return the rating (an integer) a user has given their entry
# - `RecipeCard#user`
# should return the user to which the entry belongs
# - `RecipeCard#recipe`
# should return the recipe to which the entry belongs

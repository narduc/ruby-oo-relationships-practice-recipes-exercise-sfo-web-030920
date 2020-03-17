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

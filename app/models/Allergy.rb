class Allergy
  attr_accessor :user, :ingredient

  @@all = []

  def initialize(user_obj, ingredient_obj)
    @user = user_obj
    @ingredient = ingredient_obj
    @@all << self
  end

  def self.all
    @@all
  end
end

# ### `Allergy`
# An Allergy is a join between a user and an ingredient.
# This is a has-many-through relationship.  What methods should an instance of this model respond to?

# - `Allergy.all`
# should return all of the Allergy instances

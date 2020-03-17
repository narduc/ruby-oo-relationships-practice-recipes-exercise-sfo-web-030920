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

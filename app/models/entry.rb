class Entry < ApplicationRecord
  belongs_to :log
  has_many :entries_foods
  has_many :foods, through: :entries_foods

  def foods_attributes=(foods_attributes)
    foods_attributes.each do |food_attributes|
      food = Food.find_or_create_by(food_attributes)
      self.foods << food
    end
  end
end

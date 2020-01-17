class Food < ApplicationRecord
  has_many :entries_foods
  has_many :entries, through: :entries_foods
end

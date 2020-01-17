class Entry < ApplicationRecord
  belongs_to :log
  has_many :entries_foods
  has_many :foods, through: :entries_foods
end

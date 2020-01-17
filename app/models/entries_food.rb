class EntriesFood < ApplicationRecord
  belongs_to :entry
  belongs_to :food
end

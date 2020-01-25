class EntrySerializer < ActiveModel::Serializer
  attributes :id, :servings, :category, :log_id

  has_many :foods
end

class LogSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_many :entries

  class EntrySerializer < ActiveModel::Serializer
    attributes :id, :category

    has_many :foods

    class FoodSerializer < ActiveModel::Serializer
      attributes :id, :protein, :carbs, :calories, :fat, :label

    end

  end

end

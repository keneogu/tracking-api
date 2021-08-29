module Api
  module V1    
    class MealSerializer < ActiveModel::Serializer
      attributes :id, :name, :protein, :carbohydrate, :fat, :calorie
    end
  end
end

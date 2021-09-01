module Api
  module V1
    class RoutineSerializer < ActiveModel::Serializer
      attributes :id, :name
      has_many :meals
    end
  end
end

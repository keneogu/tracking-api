module Api
  module V1
    class RoutineSerializer < ActiveModel::Serializer
      attributes :id, :name
    end
  end
end

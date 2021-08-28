class Meal < ApplicationRecord
  belongs_to :user
  belongs_to :routine
  
  validates :name, :protein, :fat, :calorie, :carbohydrate, presence: true
end

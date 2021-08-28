class Routine < ApplicationRecord
  belongs_to :user
  has_many :meals, dependent: :destroy

  validates :name, presence: true, length: { maximum: 30 }
end

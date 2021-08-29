require 'rails_helper'

RSpec.describe Meal, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:user) }

    it { is_expected.to belong_to(:routine) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_presence_of(:protein) }

    it { is_expected.to validate_presence_of(:carbohydrate) }

    it { is_expected.not_to validate_absence_of(:calorie) }

    it { is_expected.not_to validate_absence_of(:fat) }
  end
end

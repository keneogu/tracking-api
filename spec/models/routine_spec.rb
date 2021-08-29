require 'rails_helper'

RSpec.describe Routine, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:user) }

    it { is_expected.to have_many(:meals).dependent(:destroy) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_length_of(:name).is_at_most(30) }
  end
end

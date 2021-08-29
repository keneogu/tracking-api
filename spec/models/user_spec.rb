require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a username and a password' do
    user = User.new(username: 'kene', password: '1234567')
    expect(user).to be_valid
  end

  it 'is invalid without a password' do
    user = User.create(username: 'Elliot', password: '')
    expect(user).not_to be_valid
  end

  describe "associations" do
    it { is_expected.to have_many(:routines).dependent(:destroy) }

    it { is_expected.to have_many(:meals).dependent(:destroy) }
  end

  describe "validations" do
    it { is_expected.to have_secure_password }

    it { is_expected.to validate_presence_of(:username) }

    it { is_expected.to validate_length_of(:password).is_at_least(6) }
  end
end

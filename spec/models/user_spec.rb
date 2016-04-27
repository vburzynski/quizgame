require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(create(:user)).to be_valid
  end
  it "is invalid without an email" do
    expect(build(:user, email: nil)).to_not be_valid
  end
  it "is invalid without a password" do
    expect(build(:user, password: nil)).to_not be_valid
  end
  it "is invalid without a verified password" do
    expect(build(:user, password: "password1", password_confirmation: "password2")).to_not be_valid
  end
  it "is invalid with a duplicate email address" do
    user1 = create(:user)
    expect(build(:user, email: user1.email)).to_not be_valid
  end
end

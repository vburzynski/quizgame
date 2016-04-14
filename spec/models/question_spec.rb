require 'rails_helper'

RSpec.describe Question, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:question)).to be_valid
  end
  it "is invalid without a prompt" do
    expect(FactoryGirl.build(:question, prompt: nil)).to_not be_valid
  end
  it "is invalid without correct feedback" do
    expect(FactoryGirl.build(:question, correct_feedback: nil)).to_not be_valid
  end
  it "is invalid without incorrect feedback" do
    expect(FactoryGirl.build(:question, incorrect_feedback: nil)).to_not be_valid
  end
end

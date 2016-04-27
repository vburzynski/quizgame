require 'rails_helper'

RSpec.describe QuestionOption, type: :model do
  it "it has a valid factory" do
    expect(create(:question_option)).to be_valid
  end
  it "is invalid without content" do
    expect(build(:question_option, content: "")).to_not be_valid
  end
  it "is invalid without correct status" do
    expect(build(:question_option, correct: nil)).to_not be_valid
  end
  it "is invalid without association to question" do
    expect(build(:question_option, question_id: nil)).to_not be_valid
  end
end

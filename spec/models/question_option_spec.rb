require 'rails_helper'

RSpec.describe QuestionOption, type: :model do
  before :all do
    @question = create(:question)
  end
  it "it has a valid factory" do
    expect(create(:question_option, question: @question)).to be_valid
  end
  it "is invalid without content" do
    expect(build(:question_option, content: "", question: @question)).to_not be_valid
  end
  it "is invalid without correct status" do
    expect(build(:question_option, correct: nil, question: @question)).to_not be_valid
  end
  it "is invalid without association to question" do
    expect(build(:question_option, question: nil)).to_not be_valid
  end
end

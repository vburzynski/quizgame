require 'rails_helper'

RSpec.describe "questions/new.html.haml", type: :view do
  it "renders correctly" do
    assign(:question, Question.new)
    render
  end
end

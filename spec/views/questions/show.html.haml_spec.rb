require 'rails_helper'

RSpec.describe "questions/show.html.haml", type: :view do
  it "displays question information correctly" do
    assign(:question, Question.create({
      :prompt => "Hello world?",
      :correct_feedback => "correct",
      :incorrect_feedback => "incorrect"
    }))

    render

    expect(rendered).to have_content("Hello world?")
    expect(rendered).to have_content("correct")
    expect(rendered).to have_content("incorrect")
  end
end

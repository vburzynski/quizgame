require 'rails_helper'

RSpec.describe "questions/edit.html.haml", type: :view do
  it "displays question information correctly" do
    assign(:question, Question.create({
      :prompt => "Hello world?",
      :correct_feedback => "correct",
      :incorrect_feedback => "incorrect"
    }))

    render

    expect(rendered).to have_xpath("//input[@value='Hello world?']")
    expect(rendered).to have_xpath("//input[@value='correct']")
    expect(rendered).to have_xpath("//input[@value='incorrect']")
  end
end

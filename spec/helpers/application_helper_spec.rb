require "rails_helper"

describe ApplicationHelper do
  describe "#full_title" do
    it "returns a default page title" do
      expect(helper.full_title).to eql("Quiz Game")
    end
    it "appends a title to the full title" do
      expect(helper.full_title("Test")).to eql("Test | Quiz Game")
    end
  end
end

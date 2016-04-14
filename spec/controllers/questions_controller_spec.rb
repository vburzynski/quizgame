require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "shows invalid question submission information" do
      get :new
      assert_template 'questions/new'
    end
  end

  describe "POST 'create'" do
    describe "with invalid arguments" do
      before(:each) do
        request.env["HTTP_REFERER"] = new_question_path
        @invalid_args = {
          prompt: "",
          correct_feedback: "",
          incorrect_feedback: ""
        }
      end

      it "should return a non-empty list of errors" do
        post 'create', question: @invalid_args
        expect(assigns(:question).errors.empty?).to_not be true
      end

      it "should not modify the number of questions" do
        question_count = Question.count
        post 'create', question: @invalid_args
        expect(question_count).to eq Question.count
      end
    end
  end
end

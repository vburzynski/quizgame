class QuestionOptionsController < ApplicationController
  before_action :authenticate_user!

  def create
    question = Question.find(params[:question_id])
    @question_option = question.question_options.build(question_option_params)
    if @question_option.save
      redirect_to request.referrer || root_path
    else
      redirect_to request.referrer || root_url
    end
  end

  def update
    @question_option = QuestionOption.find(params[:id])
    if @question_option.update_attributes(question_option_params)
      redirect_to request.referrer || Question.find(@question_option.question_id)
    else
      redirect_to request.referrer || root_url
    end
  end

  def destroy
    @question_option = QuestionOption.find(params[:id])
    @question_option.destroy
    flash[:success] = "Question Option deleted"
    redirect_to request.referrer || root_url
  end

  private

    def question_option_params
      params.require(:question_option).permit(:content, :correct, :question_id)
    end

end

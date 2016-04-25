class QuestionsController < ApplicationController
  # TODO Paginate Qustions
  # TODO Restrict question deltion to certain users
  
  before_action :authenticate_user!

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.all
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    Question.find(params[:id]).destroy
    flash[:success] = "Question deleted"
    redirect_to questions_url
  end

  private

    def question_params
      params.require(:question).permit(:prompt, :correct_feedback,
                                       :incorrect_feedback)
    end
end

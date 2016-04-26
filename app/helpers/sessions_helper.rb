module SessionsHelper

  def current_question
    if (question_id = session[:question_id])
      @current_question ||= Question.find_by(id: question_id)
    elsif (question_id = cookies.signed[:question_id])
      @current_question = Question.find_by(id: question_id)
    end
  end

end

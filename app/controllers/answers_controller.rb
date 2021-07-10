class AnswersController < ApplicationController
  before_action :authenticate_user!

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(permitted_params.merge(user: current_user))
    redirect_to question_path(@question)
  end

  private

  def permitted_params
    params.require(:answer).permit(:text)
  end
end

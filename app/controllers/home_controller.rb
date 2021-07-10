class HomeController < ApplicationController
  def index
    @questions_count = Question.count
    @popular_questions = Question.order(views_count: :desc).limit(5)
  end
end

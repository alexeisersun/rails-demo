class HomeController < ApplicationController
  def index
    @questions_count = Question.count
  end
end

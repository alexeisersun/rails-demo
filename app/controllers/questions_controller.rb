class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_question, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :check_owner, only: [:destroy]

  # PUT /questions/1/upvote
  def upvote
    @question.increment! :positive_votes
    redirect_to question_path(@question), notice: "Question was upvoted."
  end

  # PUT /questions/1/downvote
  def downvote
    @question.increment! :negative_votes
    redirect_to question_path(@question), notice: "Question was downvoted."
  end

  # GET /questions
  def index
    @questions = Question.all
  end

  # GET /questions/1
  def show
    @question.increment! :views_count
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  def create
    @question = Question.new(question_params.merge(user_id: current_user.id))

    if @question.save
      redirect_to @question, notice: 'Question was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /questions/1
  def update
    if @question.update(question_params)
      redirect_to @question, notice: 'Question was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /questions/1
  def destroy
    @question.destroy
    redirect_to questions_url, notice: 'Question was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:title, :body, :views_count)
    end

    def check_owner
      redirect_to question_path(@question), notice: "You can't delete other's questions." unless current_user.id == @question.user_id
    end
end

class ProfileAnswersController < ApplicationController
  def index
    @answers = current_user.profile_answers
    @questions = Question.all
    @profile_answer = ProfileAnswer.new
  end

  def create
    @questions = Question.all
    @profile_answer = ProfileAnswer.new(profile_answer_params)
    if @profile_answer.save
      redirect_to profile_answers_path
    else
      render :index
    end
  end

  private

  def profile_answer_params
    params.require(:profile_answer).permit(:answer, :question_id, :user_id)
  end
end

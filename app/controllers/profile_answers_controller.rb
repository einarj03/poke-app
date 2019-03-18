class ProfileAnswersController < ApplicationController
  before_action :find_profile_answer, only: [:edit, :update]
  
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

  def edit  
  end

  def update
    @profile_answer.update(profile_answer_params)
    redirect_to user_path(current_user)
  end

  private

  def profile_answer_params
    params.require(:profile_answer).permit(:answer, :question_id, :user_id)
  end
  
  def find_profile_answer
    @profile_answer = ProfileAnswer.find(params[:id])
  end
end

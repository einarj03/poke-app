class ProfileQuestionsController < ApplicationController
  def index
    @answers = current_user.profile_questions
    if @answers.count < 5
      @questions = ["question1", "question2"]
      @profile_question = ProfileQuestion.new
    end
  end

  def create
    @questions = ["question1", "question2"]
    @profile_question = ProfileQuestion.new(profile_question_params)
    @profile_question.user = current_user
    if @profile_question.save
      raise
      redirect_to users_path(@profile_question)
    else
      render :index
    end
  end

  private

  def profile_question_params
    params.require(:profile_question).permit(:answer, :suggestion_id)
  end

  # def update
  # end

  # def destroy
  #   @dose = Dose.find(params[:id])
  #   @dose.destroy
  #   redirect_to cocktail_path(@dose.cocktail)
  # end


end

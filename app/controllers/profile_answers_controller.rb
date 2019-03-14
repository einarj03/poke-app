class ProfileAnswersController < ApplicationController
  def index
    @answers = current_user.profile_answer
    if @answers.count < 5
      @questions = ["question1", "question2"]
      @profile_answer = ProfileAnswer.new
    end
  end

  def create
    @questions = ["question1", "question2"]
    @profile_answer = ProfileAnswer.new(profile_answer_params)
    @profile_answer.user = current_user
    if @profile_answer.save
      raise
      redirect_to users_path(@profile_answer)
    else
      render :index
    end
  end

  private

  def profile_answer_params
    params.require(:profile_answer).permit(:answer, :suggestion_id)
  end

  # def update
  # end

  # def destroy
  #   @dose = Dose.find(params[:id])
  #   @dose.destroy
  #   redirect_to cocktail_path(@dose.cocktail)
  # end


end

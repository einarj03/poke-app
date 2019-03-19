class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    @report = Report.new
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :gender,
    :date_of_birth, :search_gender, :interest_gender, :photo)
  end

  def find_user
    @user = User.find(params[:id])
  end

end

class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
    @report = Report.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end

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

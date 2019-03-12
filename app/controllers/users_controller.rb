class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :gender,
    :date_of_birth, :search_gender, :interest_gender)
  end

end

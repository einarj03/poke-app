class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def show
    @user = current_user
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end

class BlocksController < ApplicationController

  def new
    set_user
    @block = Block.new
  end

  def create
    @block = Block.new(block_params)
    @block.reporter_id = current_user.id
    @blockee = set_user
    @block.blockee_id = @blockee.id
    if @block.save
      redirect_to user_path(@blockee)
      flash[:notice] = "Succesfully blocked"
    else
      flash[:notice] = "Block was Unsuccessful"
    end
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end

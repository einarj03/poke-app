class PokesController < ApplicationController
  def index
  end

  def new
    @poke = Poke.new
    @receiver = User.find(params[:user_id])
  end

  def create
    @poke = Poke.new(poke_params)
    if @poke.save
      redirect_to poke_path(@poke)
    else
      render :new
    end
  end

  private

  def poke_params
    params.require(:poke).permit(:content, :sender_id, :receiver_id)
  end
end

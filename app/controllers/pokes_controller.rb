class PokesController < ApplicationController
  def index
    @my_sent_pokes = Poke.where(sender_id: current_user.id)
    @my_received_pokes = Poke.where(receiver_id: current_user.id)
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

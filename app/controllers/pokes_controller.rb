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

  def show
      @poke = Poke.find(params[:id])
      @pokee = @poke.receiver_id
      @poker = @poke.sender_id
      # Poke has a receiver_id and sender_id
      # If I send the poke, the poke.sender_id has my user_id
      # If I receive the poke, the poke.receiver_id has my user_id
  end

  private

  def poke_params
    params.require(:poke).permit(:content, :sender_id, :receiver_id)
  end


end

class PokesController < ApplicationController
  def index
    @sent_pokes = Poke.where(sender: current_user)
    @received_pokes = Poke.where(receiver: current_user)
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
    @message = Message.new
    @messages = @poke.messages
    if @poke.sender == current_user
      @other_user = @poke.receiver
    else
      @other_user = current_user
    end
  end

  private

  def poke_params
    params.require(:poke).permit(:content, :sender_id, :receiver_id)
  end


end

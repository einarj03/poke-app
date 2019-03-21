class PokesController < ApplicationController
  before_action :find_poke, only: [:show, :update]
  before_action :find_poke_suggestions, only: [:new, :create, :show]

  def index
    @received_pokes = Poke.where(receiver: current_user, status: "pending").order('created_at DESC')
    @sent_pokes = Poke.where(sender: current_user).order('created_at DESC')
    @connections = Poke.where(sender: current_user).or(Poke.where(receiver: current_user)).where(status: "accepted").order('created_at DESC')
  end

  def new
    @poke = Poke.new
    @receiver = User.find(params[:user_id])
  end

  def create
    @poke = Poke.new(poke_params)
    @receiver = User.find(poke_params[:receiver_id])
    if @poke.save
      redirect_to poke_path(@poke)
    else
      render :new
    end
  end

  def show
    @poke.seen = true
    @poke.save!
    @message = Message.new
    @messages = @poke.messages
    if @poke.sender == current_user
      @other_user = @poke.receiver
    else
      @other_user = current_user
    end
  end

  def update
    @poke.update(poke_params)
    redirect_to poke_path(@poke)
  end

  private

  def poke_params
    params.require(:poke).permit(:content, :sender_id, :receiver_id, :status)
  end

  def find_poke
    @poke = Poke.find(params[:id])
  end

  def find_poke_suggestions
    @poke_suggestions = PokeSuggestion.all
  end
end

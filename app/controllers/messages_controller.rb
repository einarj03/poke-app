class MessagesController < ApplicationController

  # def index
  #   @poke = Poke.find(params[:poke_id])
  #   @messages = Message.where(poke: @poke).order(created_at: :desc).first(5)
  #   @message = Message.new
  # end

  def create
    @poke = Poke.find(params[:poke_id])
    @message = Message.create(message_params)
    @message.poke = @poke
    @message.user = current_user
    if @message.save
      redirect_to poke_path(@poke)
    else
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

end

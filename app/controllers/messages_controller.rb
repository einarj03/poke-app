class MessagesController < ApplicationController

  # def index
  #   @poke = Poke.find(params[:poke_id])
  #   @messages = Message.where(poke: @poke).order(created_at: :desc).first(5)
  #   @message = Message.new
  # end

  def create
    @message = Message.create(message_params)
    @message.user = current_user
    if @message.save
      redirect_to poke_path(@message.poke)
    else
      redirect_to new_user_poke_path(@message.user)
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id, :poke_id)
  end

end

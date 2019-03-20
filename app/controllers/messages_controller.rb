class MessagesController < ApplicationController
  def create
    @message = Message.create(message_params)
    if @message.save
      respond_to do |format|
        format.html { redirect_to poke_path(@message.poke) }
        format.js
      end
    else
      respond_to do |format|
        @poke = Poke.new
        @receiver = @message.poke.receiver
        format.html { render 'pokes/new' }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id, :poke_id)
  end
end

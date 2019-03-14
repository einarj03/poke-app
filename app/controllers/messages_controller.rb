class MessagesController < ApplicationController

  def index
    @message = Message.new
    @poke.messages = Message.where(poke_id: params[:poke_id])
    @poke = Poke.find(params[:poke_id])
    @receiver = @poke.receiver
  end

  def create
    @message = Message.new(user_params)
    if @user.save
    else
      render :index
    end
  end

end

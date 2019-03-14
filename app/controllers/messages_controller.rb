class MessagesController < ApplicationController

  def index
    @poke = Poke.find(params[:poke_id])
    @message = Message.new
  end

  def create
    @message = Message.new(user_params)
    if @user.save
    else
      render :index
    end
  end

end

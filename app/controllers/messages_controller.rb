class MessagesController < ApplicationController

  def index
    @messages = Message.where(poke_id: params[:poke_id])
  end

  def create
    @message = Message.new(user_params)
    if @user.save
    else
      render :index
    end
  end

end

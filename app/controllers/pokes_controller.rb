class PokesController < ApplicationController
  def index
    @my_sent_pokes = Poke.where(sender_id: current_user.id)
    @my_received_pokes = Poke.where(receiver_id: current_user.id)
  end

  def new
  end

  def create
  end
end

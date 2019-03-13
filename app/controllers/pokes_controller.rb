class PokesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    def show
      @poke = Poke.find(params[:id])
    end
  end

end

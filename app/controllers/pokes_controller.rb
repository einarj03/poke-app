class PokesController < ApplicationController
  def index
    @pokes = Poke.all
  end

  def new
  end

  def create
  end
end

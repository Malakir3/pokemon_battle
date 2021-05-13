class PokemonMovesController < ApplicationController
  def index
    @pokemon_moves = Pokemon_move.all.order('pokemon_move_name ASC')
  end

  def new
    @pokemon_move = Pokemon_move.new
  end

  def create
    @pokemon_move = Pokemon_move.new(pokemon_move_params)
    if @pokemon_move.valid?
      Pokemon_move.create(pokemon_move_params)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    render :edit unless @pokemon_move.update(pokemon_move_params)
  end

  def destroy
    @pokemon_move.destroy
  end
end

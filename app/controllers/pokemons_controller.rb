class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    if @pokemon.valid?
      Pokemon.create(pokemon_params)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:pokemon_number, :name, :type1, :type2)
  end
end

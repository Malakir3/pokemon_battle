class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :edit, :update, :destroy]

  def index
    @pokemons = Pokemon.all.order('pokemon_number ASC')
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
    render :edit unless @pokemon.update(pokemon_params)
  end

  def destroy
    @pokemon.destroy
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:pokemon_number, :name, :type1_id, :type2_id)
  end

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end
end

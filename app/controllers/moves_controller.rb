class MovesController < ApplicationController
  before_action :set_move, only: [:show, :edit, :update, :destroy]
  
  def index
    @moves = Move.all.order('move_name ASC')
  end

  def new
    @move = Move.new
  end

  def create
    @move = Move.new(move_params)
    if @move.valid?
      Move.create(move_params)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    render :edit unless @move.update(move_params)
  end

  def destroy
    @move.destroy
  end

  private

  def move_params
    params.require(:move).permit(:move_name, :type_id, :pp, :power, :accuracy)
  end

  def set_move
    @move = Move.find(params[:id])
  end
end

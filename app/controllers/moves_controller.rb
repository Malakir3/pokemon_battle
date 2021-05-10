class MovesController < ApplicationController
  def index
    @moves = move.all.order('move_number ASC')
  end

  def new
    @move = move.new
  end

  def create
    @move = move.new(move_params)
    if @move.valid?
      move.create(move_params)
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
    @move = move.find(params[:id])
  end
end

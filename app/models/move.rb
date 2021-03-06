class Move < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :pokemon_moves
  has_many :pokemons, through: :pokemon_moves
  has_many :type

  with_options presence: true do
    validates :move_name
    validates :type_id
    validates :pp
    validates :power
    validates :accuracy
  end

  validates :type_id, numericality: { other_than: 1 }
end

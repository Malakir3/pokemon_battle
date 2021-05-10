class Pokemon < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :pokemon_moves
  has_many :moves, through: :pokemon_moves
  has_many :type
  
  with_options presence: true do
    validates :pokemon_number
    validates :name
    validates :type1_id
  end

  validates :type1_id, numericality: { other_than: 1 }
end

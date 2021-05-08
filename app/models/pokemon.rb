class Pokemon < ApplicationRecord
  with options presesence: true do
    validates :pokemon_number
    validates :name
    validates :type1_id
  end
end

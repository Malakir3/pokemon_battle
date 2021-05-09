class Pokemon < ApplicationRecord
  with_options presence: true do
    validates :pokemon_number
    validates :name
    validates :type1_id
  end
end

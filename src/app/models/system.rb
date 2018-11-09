class System < ApplicationRecord
  has_many :classifications
  has_many :outline_items, through: :classifications
end

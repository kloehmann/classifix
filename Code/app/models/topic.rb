class Topic < ApplicationRecord
    has_many :items
    validates :key, uniqueness: true
end

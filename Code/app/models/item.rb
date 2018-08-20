class Item < ApplicationRecord
    belongs_to :topic
    has_many :system
    validates :key, uniqueness: true
end

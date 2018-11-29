# OutlineItem is used to give structure to the classification
class OutlineItem < ApplicationRecord
  has_many :classifications
  has_many :systems, through: :classifications
  validates :key, uniqueness: true
  has_many :outline_items, class_name: 'OutlineItem', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'OutlineItem', foreign_key: 'parent_id', optional: true
  has_many :recommendations
end

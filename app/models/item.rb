class Item < ApplicationRecord
  has_many :entry_items
  belongs_to :budget

end

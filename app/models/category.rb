class Category < ApplicationRecord
  has_many: sub_categories

  validates :title, presence: true, uniqueness: true
end

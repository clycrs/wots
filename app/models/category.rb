class Category < ApplicationRecord
  has_many :sub_categories

  has_one_attached :photo

  validates :title, presence: true, uniqueness: true
end

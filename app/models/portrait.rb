class Portrait < ApplicationRecord
  belongs_to :cast

  has_many_attached :photos

  validates :title, presence: true
  validates :description, presence: true
end

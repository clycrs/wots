class Portrait < ApplicationRecord
  belongs_to :cast

  validates :title, presence: true
  validates :description, presence: true
end

class Cast < ApplicationRecord
  belongs_to :user
  has_many :cast_sub_categories
  has_many :sub_categories, through: :cast_sub_categories
  has_many :categories, through: :sub_categories
  has_one :portrait

  validates :format, inclusion: { in: %w[podcast minicast] }
  validates :title, presence: true
  validates :description, presence: true
  validates :localisation, presence: true
  validates :published_date, presence: true
end

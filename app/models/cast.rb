class Cast < ApplicationRecord
  belongs_to :user
  has_many :sub_categories, through: :cast_sub_categories
  has_many :categories, through: :sub_categories
  has_one :portrait

  has_one_attached :photo

  validates :type, inclusion: { in: %w[podcast minicast] }
  validates :title, presence: true
  validates :description, presence: true
  validates :localisation, presence: true
  validates :published_date, presence: true
end

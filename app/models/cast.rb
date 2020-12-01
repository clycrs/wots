class Cast < ApplicationRecord
  belongs_to :user
  has_many :sub_categories, through: :cast_sub_categories
  has_many :categories, through: :sub_categories
  has_one :portrait
  
  validates :type, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :localisation, presence: true
  validates :audio_file, presence: true
  validates :photo, presence: true
  validates :published_date, presence: true  
end

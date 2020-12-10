class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :casts, dependent: :destroy
  has_many :comments

  has_one_attached :photo


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nickname, presence: true, uniqueness: true
  validates :description, presence: true
end

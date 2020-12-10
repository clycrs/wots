class Comment < ApplicationRecord
  belongs_to :cast
  belongs_to :user
end

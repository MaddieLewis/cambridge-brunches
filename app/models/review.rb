class Review < ApplicationRecord
  belongs_to :user
  belongs_to :college

  validates :title, :rating, :description, presence: true
end

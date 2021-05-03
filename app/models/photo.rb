class Photo < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true

  belongs_to :user
end

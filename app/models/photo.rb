class Photo < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
end

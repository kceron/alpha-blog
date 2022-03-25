class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 4, maximum: 80 }
  validates :description, presence: true, length: { minimum: 5, maximum: 300 }
end
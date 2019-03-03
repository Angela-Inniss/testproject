class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :reviews
  belongs_to :user
  validates :description, presence: true
  validates :name, presence: true
end

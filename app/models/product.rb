class Product < ApplicationRecord
  has_many :user, through: :exportation
  has_many :user, through: :importation
  has_many :importation
  has_many :exportation

  validates :name, presence: true
  validates :color, presence: true
  validates :size, presence: true
  validates :quantity, presence: true
end

class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy, inverse_of: :cocktail
  has_many :ingredients, through: :doses
  accepts_nested_attributes_for :doses
  validates :name, uniqueness: true, presence: true
  mount_uploader :photo, PhotoUploader
end

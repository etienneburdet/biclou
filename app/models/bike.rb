class Bike < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_hour, presence: true, numericality: { only_integer: true }

  validate :has_photo?

  def has_photo?
    photo.attached?
  end
end

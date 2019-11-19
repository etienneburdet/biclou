class Bike < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_one_attached :photo

  validates :name, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :price_per_hour, presence: true

  validate :has_photo?

  def has_photo?
    unless photo.attached?
      errors.add(:photo, "should be present")
    end
  end
end

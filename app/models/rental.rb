class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :end_after_start

  private

  def end_after_start
    if start_date.present? && end_date.present? && (start_date < end_date)
      errors.add(:end_date, "can't end before start")
    end
  end
end

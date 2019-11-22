class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :end_date, presence: true
  validates :start_date, presence: true
  validate :start_date_is_valid, :end_date_is_valid

  private

  def start_date_is_valid
    if start_date.present? && start_date < DateTime.now
      errors.add(:start_date, "can't be in the past")
    end
  end

  def end_date_is_valid
    if end_date.present? && start_date.present?
      if end_date < DateTime.now
        errors.add(:end_date, "can't be in the past")
      elsif end_date <= start_date
        errors.add(:end_date, "can't be before start date")
      end
    end
  end
end

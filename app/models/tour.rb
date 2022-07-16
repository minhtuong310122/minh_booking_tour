class Tour < ActiveRecord::Base
  mount_uploader :image, FileUploader
  enum tour_type: { normal_tour: 0, fixed_tour: 1 }
  validates :title, :image, :price, presence: true
  validates :time_in_day, presence: true, if: :fixed_tour?
  validates :start_date, :end_date, presence: true, if: :normal_tour?

  validate :start_date_not_bigger_end_date, if: :normal_tour?
  validate :should_not_have_time_in_day, if: :normal_tour?
  validate :should_not_have_start_date, if: :fixed_tour?
  validate :should_not_have_end_date, if: :fixed_tour?

  private

  def start_date_not_bigger_end_date
    return if start_date.blank? || end_date.blank?

    errors.add(:start_date, "shouldn't be bigger end date") if start_date > end_date
  end

  def should_not_have_time_in_day
    errors.add(:time_in_day, "shouldn't present") if time_in_day.present?
  end

  def should_not_have_start_date
    errors.add(:start_date, "shouldn't present") if start_date.present?
  end

  def should_not_have_end_date
    errors.add(:end_date, "shouldn't present") if end_date.present?
  end
end

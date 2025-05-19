class Program < ApplicationRecord
  validates :name, :start_date, :end_date, presence: true

  validate :start_date_cannot_be_after_end_date
  validate :start_date_only_can_be_mondays
  validate :end_date_only_can_be_sundays

  private

  def start_date_cannot_be_after_end_date
    return if start_date.blank? || end_date.blank?

    errors.add :start_date, 'must be before end date' if start_date > end_date
  end

  def start_date_only_can_be_mondays
    return if start_date.blank?

    errors.add :start_date, 'must be a Monday' unless start_date.monday?
  end

  def end_date_only_can_be_sundays
    return if end_date.blank?

    errors.add :end_date, 'must be a Sunday' unless end_date.sunday?
  end
end

class Assignment < ApplicationRecord
  enum :allowed_gender, { male: 0, female: 1, both: 2 }, validate: true

  has_many :participant_assignments, dependent: :destroy
  has_many :eligible_participants, through: :participant_assignments, source: :participant

  has_many :program_assignments, dependent: :destroy
  has_many :programs, through: :program_assignments

  validates :name, presence: true
end

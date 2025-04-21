class Participant < ApplicationRecord
  enum :gender, { male: 0, female: 1 }, validate: true

  has_many :participant_assignments, dependent: :destroy
  has_many :allowed_assignments, through: :participant_assignments, source: :assignment

  validates :name, :gender, presence: true
end

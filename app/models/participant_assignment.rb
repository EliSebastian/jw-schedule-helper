class ParticipantAssignment < ApplicationRecord
  belongs_to :participant
  belongs_to :assignment

  validates :participant_id, uniqueness: { scope: :assignment_id }
end

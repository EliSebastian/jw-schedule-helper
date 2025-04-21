class ParticipantAssignment < ApplicationRecord
  belongs_to :participant
  belongs_to :assignment
end

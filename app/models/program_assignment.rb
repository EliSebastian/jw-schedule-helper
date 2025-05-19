class ProgramAssignment < ApplicationRecord
  belongs_to :program
  belongs_to :assignment

  validates :assignment_id, uniqueness: { scope: :program_id }
end

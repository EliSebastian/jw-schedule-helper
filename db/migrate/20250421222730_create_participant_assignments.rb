class CreateParticipantAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :participant_assignments do |t|
      t.references :participant, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true

      t.timestamps
    end
  end
end

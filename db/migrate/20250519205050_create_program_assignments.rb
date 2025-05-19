class CreateProgramAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :program_assignments do |t|
      t.references :program, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateWeeklyAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :weekly_assignments do |t|
      t.references :program_assignment, null: false, foreign_key: true
      t.date :week
      t.date :day
      t.references :participant, null: false, foreign_key: true

      t.timestamps
    end
  end
end

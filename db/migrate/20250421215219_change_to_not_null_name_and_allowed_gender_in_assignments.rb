class ChangeToNotNullNameAndAllowedGenderInAssignments < ActiveRecord::Migration[8.0]
  def change
    change_column_null :assignments, :name, false
    change_column_null :assignments, :allowed_gender, false
  end
end

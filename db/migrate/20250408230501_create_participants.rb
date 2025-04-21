class CreateParticipants < ActiveRecord::Migration[8.0]
  def change
    create_table :participants do |t|
      t.string :name, null: false
      t.integer :gender, null: false

      t.timestamps
    end
  end
end

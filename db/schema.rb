# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_05_19_205050) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.integer "allowed_gender", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participant_assignments", force: :cascade do |t|
    t.bigint "participant_id", null: false
    t.bigint "assignment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_participant_assignments_on_assignment_id"
    t.index ["participant_id"], name: "index_participant_assignments_on_participant_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name", null: false
    t.integer "gender", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "program_assignments", force: :cascade do |t|
    t.bigint "program_id", null: false
    t.bigint "assignment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_program_assignments_on_assignment_id"
    t.index ["program_id"], name: "index_program_assignments_on_program_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "participant_assignments", "assignments"
  add_foreign_key "participant_assignments", "participants"
  add_foreign_key "program_assignments", "assignments"
  add_foreign_key "program_assignments", "programs"
end

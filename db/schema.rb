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

ActiveRecord::Schema.define(version: 2022_04_18_114306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "programmers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.datetime "startDate"
    t.datetime "deadLineDate"
    t.integer "budget"
    t.bigint "programmer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["programmer_id"], name: "index_projects_on_programmer_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.bigint "programmer_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["programmer_id"], name: "index_vendors_on_programmer_id"
    t.index ["project_id"], name: "index_vendors_on_project_id"
  end

  add_foreign_key "projects", "programmers"
  add_foreign_key "vendors", "programmers"
  add_foreign_key "vendors", "projects"
end

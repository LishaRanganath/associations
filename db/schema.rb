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

ActiveRecord::Schema.define(version: 2024_03_14_012953) do

  create_table "branches", force: :cascade do |t|
    t.string "location"
    t.bigint "phno"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "staff_details", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "phno"
    t.integer "branch_id"
    t.integer "staff_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["branch_id"], name: "index_staff_details_on_branch_id"
    t.index ["staff_type_id"], name: "index_staff_details_on_staff_type_id"
  end

  create_table "staff_types", force: :cascade do |t|
    t.integer "number"
    t.string "type_staff"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.integer "name"
    t.string "email"
    t.bigint "phno"
    t.integer "branch_id"
    t.integer "staff_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["branch_id"], name: "index_staffs_on_branch_id"
    t.index ["staff_type_id"], name: "index_staffs_on_staff_type_id"
  end

end

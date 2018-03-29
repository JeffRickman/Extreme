# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180328100638) do

  create_table "activities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.string "activity_type"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crafts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "category"
    t.string "copyright"
    t.text "equipment"
    t.text "instructions"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_crafts_on_activity_id"
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.date "event_date"
    t.string "address_line1"
    t.string "address_line2"
    t.string "leader_name"
    t.string "leader_phone"
    t.text "details"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_programs", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "program_id", null: false
    t.bigint "event_id", null: false
  end

  create_table "games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "category"
    t.string "copyright"
    t.text "equipment"
    t.text "details"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_games_on_activity_id"
  end

  create_table "leaders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.date "dob"
    t.string "sex"
    t.string "address_l1ne1"
    t.string "address_line2"
    t.string "phone"
    t.string "email"
    t.boolean "diet_status"
    t.string "diet"
    t.boolean "allergy_status"
    t.string "allergy"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "category"
    t.string "copyright"
    t.text "passage"
    t.text "details"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_lessons_on_activity_id"
  end

  create_table "programevents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.date "event_date"
    t.string "address_line1"
    t.string "address_line2"
    t.string "leader_name"
    t.string "leader_phone"
    t.text "details"
    t.string "status"
    t.bigint "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_programevents_on_name"
    t.index ["program_id"], name: "index_programevents_on_program_id"
  end

  create_table "programs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.time "start_time"
    t.string "theme"
    t.text "details"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "category_id"
    t.time "finish_time"
    t.date "program_start_date"
    t.bigint "leader_id"
    t.index ["leader_id"], name: "fk_rails_6278d558f6"
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "category"
    t.string "copyright"
    t.text "ingredients"
    t.text "instructions"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_recipes_on_activity_id"
  end

  create_table "songs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "category"
    t.string "author"
    t.string "copyright"
    t.text "words"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_songs_on_activity_id"
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.date "dob"
    t.string "sex"
    t.string "address_l1ne1"
    t.string "address_line2"
    t.boolean "diet_status"
    t.string "diet"
    t.boolean "allergy_status"
    t.string "allergy"
    t.string "parent_contact"
    t.string "parent_phone"
    t.string "parent_email"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "crafts", "activities"
  add_foreign_key "games", "activities"
  add_foreign_key "lessons", "activities"
  add_foreign_key "programevents", "programs"
  add_foreign_key "programs", "leaders"
  add_foreign_key "recipes", "activities"
  add_foreign_key "songs", "activities"
end

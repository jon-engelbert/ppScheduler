# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140531152813) do

  create_table "assignments", force: true do |t|
    t.string   "title"
    t.integer  "course_id"
    t.datetime "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "availables", force: true do |t|
    t.integer  "user_id"
    t.datetime "begin"
    t.datetime "end"
    t.integer  "assignment_id"
    t.integer  "proirity"
    t.boolean  "active?"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "teacher"
    t.string   "teacher2"
    t.string   "teacher3"
    t.string   "university"
    t.date     "start_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.datetime "begin"
    t.datetime "end"
    t.integer  "assignment_id"
    t.integer  "available1_id"
    t.integer  "available2_id"
    t.boolean  "user1_response?"
    t.boolean  "user2_response?"
    t.integer  "user1_commitment"
    t.integer  "user2_commitment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "cellphone"
    t.boolean  "english_speaker?"
    t.boolean  "teacher?"
    t.boolean  "admin?"
    t.boolean  "student?"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20160806090705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phoneNumber"
    t.string   "cv"
    t.string   "video"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "candidate_id"
  end

  add_index "applications", ["candidate_id"], name: "index_applications_on_candidate_id", using: :btree

  create_table "candidates", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "compnayName"
    t.string   "companyLocation"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "job_id"
    t.string   "password"
  end

  add_index "clients", ["job_id"], name: "index_clients_on_job_id", using: :btree

  create_table "jobs", force: :cascade do |t|
    t.string   "companyName"
    t.string   "title"
    t.string   "description"
    t.string   "industry"
    t.string   "hours"
    t.string   "logo"
    t.string   "video"
    t.string   "location"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "application_id"
  end

  add_index "jobs", ["application_id"], name: "index_jobs_on_application_id", using: :btree

  add_foreign_key "applications", "candidates"
  add_foreign_key "clients", "jobs"
  add_foreign_key "jobs", "applications"
end

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

ActiveRecord::Schema.define(version: 20180815091538) do

  create_table "cloudservices", force: :cascade do |t|
    t.string   "code"
    t.string   "vendor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "expired_at"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "contact_person_name"
    t.string   "contact_person_mobile"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "customerservers", force: :cascade do |t|
    t.string   "code"
    t.string   "customerservice"
    t.string   "customer"
    t.string   "our_server"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.date     "deadline"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "service"
    t.date     "start_time"
    t.date     "plan_complated_at"
    t.date     "actual_complated_at"
    t.string   "status"
    t.string   "url"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end

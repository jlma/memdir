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

ActiveRecord::Schema.define(version: 20130514154635) do

  create_table "addresses", force: true do |t|
    t.integer  "fkMemberID"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "addressWhich"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: true do |t|
    t.integer  "fkMemberID"
    t.string   "emailAddress"
    t.string   "emailWho"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emergency_contacts", force: true do |t|
    t.integer  "fkMemberID"
    t.string   "name"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phoneNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "lastName"
    t.string   "husbandName"
    t.string   "wifeName"
    t.string   "fmcaNumber"
    t.string   "photoFile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.integer  "fkMemberID"
    t.string   "whichPhone"
    t.string   "phoneNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20150622154526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street_1"
    t.string   "street_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "patient_id"
  end

  add_index "addresses", ["patient_id"], name: "index_addresses_on_patient_id", using: :btree

  create_table "insurances", force: :cascade do |t|
    t.string   "payment_method"
    t.string   "company"
    t.string   "policy_no"
    t.string   "group_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "patient_id"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone"
  end

  add_index "insurances", ["patient_id"], name: "index_insurances_on_patient_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "kipu_account_number"
    t.datetime "admission_date"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "gender"
    t.string   "marital_status"
    t.string   "diagnosis_codes"
    t.string   "race"
    t.string   "ethnicity"
    t.string   "ssn"
    t.string   "dob"
    t.string   "phone"
    t.string   "alt_phone"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "subscribers", force: :cascade do |t|
    t.string   "relationship"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "dob"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "gender"
    t.string   "ssn"
    t.string   "home_phone"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "insurance_id"
  end

  add_index "subscribers", ["insurance_id"], name: "index_subscribers_on_insurance_id", using: :btree

  add_foreign_key "addresses", "patients"
  add_foreign_key "insurances", "patients"
  add_foreign_key "subscribers", "insurances"
end

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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130603074711) do

  create_table "counties", :force => true do |t|
    t.string   "county_name"
    t.integer  "district_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "counties", ["district_id"], :name => "index_counties_on_district_id"

  create_table "districts", :force => true do |t|
    t.string   "district_name"
    t.integer  "region_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "districts", ["region_id"], :name => "index_districts_on_region_id"

  create_table "grades", :force => true do |t|
    t.string   "grade_name"
    t.integer  "school_id"
    t.integer  "stream_number"
    t.integer  "teacher_number"
    t.integer  "desk_number"
    t.integer  "year"
    t.integer  "quarter"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "grades", ["school_id"], :name => "index_grades_on_school_id"

  create_table "parishes", :force => true do |t|
    t.string   "parish_name"
    t.integer  "subcounty_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "parishes", ["subcounty_id"], :name => "index_parishes_on_subcounty_id"

  create_table "pupils", :force => true do |t|
    t.integer  "grade_id"
    t.integer  "gender"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "pupils", ["grade_id"], :name => "index_pupils_on_grade_id"

  create_table "readingmaterials", :force => true do |t|
    t.integer  "grade_id"
    t.integer  "math"
    t.integer  "english"
    t.integer  "science"
    t.integer  "sst"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "re"
  end

  create_table "regions", :force => true do |t|
    t.string   "region_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "regions", ["region_name"], :name => "index_regions_on_region_name"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "schools", :force => true do |t|
    t.string   "school_name"
    t.integer  "parish_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "schools", ["parish_id"], :name => "index_schools_on_parish_id"

  create_table "structures", :force => true do |t|
    t.integer  "school_id"
    t.integer  "completion_status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "subcounties", :force => true do |t|
    t.string   "subcounty_name"
    t.integer  "county_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "subcounties", ["county_id"], :name => "index_subcounties_on_county_id"

  create_table "teachers", :force => true do |t|
    t.integer  "school_id"
    t.integer  "gender"
    t.integer  "payroll_status"
    t.integer  "training_status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end

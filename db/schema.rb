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

ActiveRecord::Schema.define(:version => 20131001094600) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "ads", :force => true do |t|
    t.string   "title"
    t.text     "about"
    t.text     "contact"
    t.string   "house_no"
    t.string   "street_name"
    t.string   "area"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pin_code"
    t.string   "company_name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.integer  "datax"
    t.integer  "datay"
    t.integer  "row"
    t.integer  "col"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "photo1_file_name"
    t.string   "photo1_content_type"
    t.integer  "photo1_file_size"
    t.datetime "photo1_updated_at"
    t.string   "photo2_file_name"
    t.string   "photo2_content_type"
    t.integer  "photo2_file_size"
    t.datetime "photo2_updated_at"
    t.string   "photo3_file_name"
    t.string   "photo3_content_type"
    t.integer  "photo3_file_size"
    t.datetime "photo3_updated_at"
    t.string   "otherad1"
    t.string   "otherad2"
    t.string   "otherad3"
    t.string   "otherad4"
    t.string   "otherad5"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "family_members", :force => true do |t|
    t.integer  "user_id",                :default => 0,     :null => false
    t.integer  "family_member_user_id",  :default => 0,     :null => false
    t.boolean  "join_pending",           :default => true
    t.integer  "relation_id",            :default => 0,     :null => false
    t.boolean  "spouse_status",          :default => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.date     "family_member_user_dob"
  end

  add_index "family_members", ["family_member_user_id"], :name => "index_on_fmuid"
  add_index "family_members", ["user_id"], :name => "user_id_index"

  create_table "feedbacks", :force => true do |t|
    t.text     "details"
    t.integer  "user_id",    :default => 0, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "gender_notifications", :force => true do |t|
    t.string   "user_gender"
    t.string   "present_relation"
    t.string   "reverse_relation"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "mappings", :force => true do |t|
    t.string   "first_person"
    t.string   "second_person"
    t.string   "relationship"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "p1"
    t.text     "p2"
    t.text     "p3"
    t.string   "location"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "relations", :force => true do |t|
    t.string   "relationship"
    t.integer  "priority",     :default => 0, :null => false
    t.integer  "serial",       :default => 0
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "relatives", :force => true do |t|
    t.integer  "present_id"
    t.integer  "existing_member_id"
    t.integer  "new_member_id"
    t.string   "relationship"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "flag",                   :default => false
    t.boolean  "accept_request",         :default => false
    t.string   "reverse_relationship"
    t.boolean  "reverse_flag",           :default => false
    t.boolean  "reverse_accept_request", :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "firstname",          :default => "",    :null => false
    t.string   "lastname",           :default => "",    :null => false
    t.integer  "user_id",            :default => 0,     :null => false
    t.string   "mobileno",           :default => "",    :null => false
    t.string   "email",              :default => "",    :null => false
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "occupation",         :default => "",    :null => false
    t.string   "station",            :default => "",    :null => false
    t.string   "gender"
    t.string   "mj_id",              :default => "",    :null => false
    t.boolean  "reqstatus"
    t.boolean  "visited",            :default => false
    t.float    "payment",            :default => 0.0
    t.float    "due",                :default => 0.0
    t.integer  "family_count",       :default => 1
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "dob",                :default => "",    :null => false
    t.string   "middlename"
    t.string   "state"
    t.string   "city"
    t.string   "country"
    t.string   "fathername"
    t.string   "desig"
    t.integer  "zip"
    t.integer  "ccode"
    t.integer  "doby"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "other"
    t.string   "ip"
  end

  add_index "users", ["user_id"], :name => "index_on_user_id"

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "youtube"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

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

ActiveRecord::Schema.define(:version => 20111122092715) do

  create_table "attribute_documents", :force => true do |t|
    t.integer  "document_id"
    t.integer  "attribute_type_id"
    t.string   "value"
    t.date     "on_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attribute_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "document_photos", :force => true do |t|
    t.integer  "document_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "document_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.integer  "status_id"
    t.integer  "document_type_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "title"
    t.integer  "length"
    t.integer  "width"
    t.integer  "weight"
    t.integer  "depth"
    t.integer  "edition"
    t.integer  "pages"
    t.text     "condition"
    t.text     "binding"
    t.text     "comment"
    t.string   "stock_number"
    t.boolean  "is_hidden"
    t.date     "purchase_date"
    t.decimal  "purchase_price",   :precision => 10, :scale => 0
    t.string   "purchase_vendor"
    t.date     "sale_date"
    t.decimal  "sale_price",       :precision => 10, :scale => 0
    t.string   "sale_purchaser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.integer  "document_id"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "county"
    t.string   "town"
    t.string   "country"
    t.string   "additional_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.integer  "document_id"
    t.string   "title"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "maiden_name"
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "person_events", :force => true do |t|
    t.integer  "person_id"
    t.integer  "event_type_id"
    t.date     "date_event"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "town"
    t.string   "county"
    t.string   "country"
    t.string   "additional_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                                           :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.boolean  "is_admin",                        :default => false
    t.boolean  "is_active",                       :default => true
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "county"
    t.string   "post_code"
    t.string   "country"
    t.string   "tel_number"
    t.string   "mobile_number"
    t.date     "date_of_birth"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
  end

  add_index "users", ["last_logout_at", "last_activity_at"], :name => "index_users_on_last_logout_at_and_last_activity_at"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token"

end

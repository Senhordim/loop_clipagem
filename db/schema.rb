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

ActiveRecord::Schema.define(version: 20170518134436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "neighborhood"
    t.string   "zip_code"
    t.string   "numb"
    t.string   "complement"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "customer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id", using: :btree
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "customer_publications", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "publication_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["customer_id"], name: "index_customer_publications_on_customer_id", using: :btree
    t.index ["publication_id"], name: "index_customer_publications_on_publication_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "social_name"
    t.string   "cnpj"
    t.string   "phone"
    t.string   "username"
    t.string   "logo"
    t.index ["email"], name: "index_customers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "publication_uploaded_files", force: :cascade do |t|
    t.integer  "publication_id"
    t.integer  "uploaded_file_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["publication_id"], name: "index_publication_uploaded_files_on_publication_id", using: :btree
    t.index ["uploaded_file_id"], name: "index_publication_uploaded_files_on_uploaded_file_id", using: :btree
  end

  create_table "publications", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "archive"
    t.string   "status"
    t.integer  "page"
    t.string   "link"
    t.integer  "vehicle_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.date     "date_of_publication"
    t.index ["vehicle_id"], name: "index_publications_on_vehicle_id", using: :btree
  end

  create_table "uploaded_files", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "archive"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "publication_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.string   "vehicle_type"
    t.boolean  "national",                                default: true
    t.string   "country"
    t.string   "state"
    t.string   "url"
    t.string   "address"
    t.string   "publication_day"
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.integer  "publication"
    t.decimal  "price",           precision: 8, scale: 2
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "customer_publications", "customers"
  add_foreign_key "customer_publications", "publications"
  add_foreign_key "publication_uploaded_files", "publications"
  add_foreign_key "publication_uploaded_files", "uploaded_files"
  add_foreign_key "publications", "vehicles"
end

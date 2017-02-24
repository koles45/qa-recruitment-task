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

ActiveRecord::Schema.define(version: 20170116103139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "birthdays", force: :cascade do |t|
    t.integer  "celebrant_id"
    t.integer  "person_responsible_id"
    t.integer  "year"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.boolean  "covered",               default: false
    t.datetime "assigned_at"
  end

  add_index "birthdays", ["celebrant_id"], name: "index_birthdays_on_celebrant_id", using: :btree
  add_index "birthdays", ["person_responsible_id"], name: "index_birthdays_on_person_responsible_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "owner_id"
    t.integer  "proposition_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comments", ["owner_id"], name: "index_comments_on_owner_id", using: :btree
  add_index "comments", ["proposition_id"], name: "index_comments_on_proposition_id", using: :btree

  create_table "propositions", force: :cascade do |t|
    t.string   "title",          null: false
    t.text     "description"
    t.decimal  "value"
    t.integer  "owner_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "celebrant_id"
    t.integer  "year_chosen_in"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                 null: false
    t.string   "name",                                  null: false
    t.string   "sso_id",                                null: false
    t.boolean  "szama"
    t.integer  "birthday_month"
    t.integer  "birthday_day"
    t.text     "about"
    t.boolean  "participating",          default: true
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["participating"], name: "index_users_on_participating", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["sso_id"], name: "index_users_on_sso_id", using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "proposition_id"
    t.integer  "amount",         default: 0
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "votes", ["proposition_id"], name: "index_votes_on_proposition_id", using: :btree
  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree

end

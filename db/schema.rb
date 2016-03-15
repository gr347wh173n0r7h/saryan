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

ActiveRecord::Schema.define(version: 20160313210345) do

  create_table "academics", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.integer  "school_id",     limit: 4
    t.integer  "department_id", limit: 4
    t.integer  "catalog_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "academics", ["catalog_id"], name: "index_academics_on_catalog_id", using: :btree
  add_index "academics", ["department_id"], name: "index_academics_on_department_id", using: :btree
  add_index "academics", ["school_id"], name: "index_academics_on_school_id", using: :btree
  add_index "academics", ["user_id"], name: "index_academics_on_user_id", using: :btree

  create_table "catalogs", force: :cascade do |t|
    t.string   "degree",     limit: 255
    t.integer  "cat_yr",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "catalogs", ["cat_yr"], name: "index_catalogs_on_cat_yr", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "dep",        limit: 255
    t.string   "name",       limit: 255
    t.string   "abbrev",     limit: 255
    t.integer  "units",      limit: 4
    t.text     "desc",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "abbrev",     limit: 255
    t.integer  "school_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "departments", ["school_id"], name: "index_departments_on_school_id", using: :btree

  create_table "majors", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "maj_abbrev",    limit: 255
    t.integer  "department_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "majors", ["department_id"], name: "index_majors_on_department_id", using: :btree

  create_table "plans", force: :cascade do |t|
    t.integer  "catalog_id", limit: 4
    t.integer  "course_id",  limit: 4
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "plans", ["catalog_id"], name: "index_plans_on_catalog_id", using: :btree
  add_index "plans", ["course_id"], name: "index_plans_on_course_id", using: :btree

  create_table "prerequistes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "status",          limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
    t.string   "remember_digest", limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "academics", "catalogs"
  add_foreign_key "academics", "departments"
  add_foreign_key "academics", "schools"
  add_foreign_key "academics", "users"
  add_foreign_key "departments", "schools"
  add_foreign_key "majors", "departments"
end

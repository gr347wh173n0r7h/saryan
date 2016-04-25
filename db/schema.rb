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

ActiveRecord::Schema.define(version: 20160425002624) do

  create_table "academics", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.integer  "school_id",     limit: 4
    t.integer  "department_id", limit: 4
    t.integer  "major_id",      limit: 4
    t.integer  "catalog_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "academics", ["catalog_id"], name: "index_academics_on_catalog_id", using: :btree
  add_index "academics", ["department_id"], name: "index_academics_on_department_id", using: :btree
  add_index "academics", ["major_id"], name: "index_academics_on_major_id", using: :btree
  add_index "academics", ["school_id"], name: "index_academics_on_school_id", using: :btree
  add_index "academics", ["user_id"], name: "index_academics_on_user_id", using: :btree

  create_table "catalogs", force: :cascade do |t|
    t.string   "degree",     limit: 255
    t.integer  "cat_yr",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "catalogs", ["cat_yr"], name: "index_catalogs_on_cat_yr", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "units",        limit: 4
    t.integer  "super_cat_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "categories", ["super_cat_id"], name: "index_categories_on_super_cat_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "dep",             limit: 255
    t.string   "name",            limit: 255
    t.string   "abbrev",          limit: 255
    t.integer  "units",           limit: 4
    t.text     "desc",            limit: 65535
    t.integer  "sub_category_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "courses", ["sub_category_id"], name: "index_courses_on_sub_category_id", using: :btree

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

  create_table "planners", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "planners", ["user_id"], name: "index_planners_on_user_id", using: :btree

  create_table "plans", force: :cascade do |t|
    t.integer  "catalog_id", limit: 4
    t.integer  "course_id",  limit: 4
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "plans", ["catalog_id"], name: "index_plans_on_catalog_id", using: :btree
  add_index "plans", ["course_id"], name: "index_plans_on_course_id", using: :btree

  create_table "prerequsites", force: :cascade do |t|
    t.integer  "course_id",  limit: 4
    t.integer  "prereq_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "prerequsites", ["course_id"], name: "index_prerequsites_on_course_id", using: :btree
  add_index "prerequsites", ["prereq_id"], name: "index_prerequsites_on_prereq_id", using: :btree

  create_table "saved_plans", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "major",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "semester_refs", force: :cascade do |t|
    t.integer  "semester_id", limit: 4
    t.integer  "course_id",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "semester_refs", ["course_id"], name: "index_semester_refs_on_course_id", using: :btree
  add_index "semester_refs", ["semester_id"], name: "index_semester_refs_on_semester_id", using: :btree

  create_table "semesters", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "year",          limit: 4
    t.integer  "units",         limit: 4
    t.integer  "planner_id",    limit: 4
    t.integer  "saved_plan_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "semesters", ["planner_id"], name: "index_semesters_on_planner_id", using: :btree
  add_index "semesters", ["saved_plan_id"], name: "index_semesters_on_saved_plan_id", using: :btree

  create_table "sub_categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "units",       limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "sub_categories", ["category_id"], name: "index_sub_categories_on_category_id", using: :btree

  create_table "super_cats", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "units",      limit: 4
    t.integer  "catalog_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "super_cats", ["catalog_id"], name: "index_super_cats_on_catalog_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                      limit: 255
    t.string   "email",                     limit: 255
    t.string   "status",                    limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "password_digest",           limit: 255
    t.string   "remember_digest",           limit: 255
    t.string   "profilephoto_file_name",    limit: 255
    t.string   "profilephoto_content_type", limit: 255
    t.integer  "profilephoto_file_size",    limit: 4
    t.datetime "profilephoto_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "academics", "catalogs"
  add_foreign_key "academics", "departments"
  add_foreign_key "academics", "majors"
  add_foreign_key "academics", "schools"
  add_foreign_key "academics", "users"
  add_foreign_key "categories", "super_cats"
  add_foreign_key "courses", "sub_categories"
  add_foreign_key "departments", "schools"
  add_foreign_key "majors", "departments"
  add_foreign_key "planners", "users"
  add_foreign_key "prerequsites", "courses"
  add_foreign_key "semester_refs", "semesters"
  add_foreign_key "semesters", "planners"
  add_foreign_key "semesters", "saved_plans"
  add_foreign_key "sub_categories", "categories"
  add_foreign_key "super_cats", "catalogs"
end

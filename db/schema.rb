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

ActiveRecord::Schema.define(version: 2018_10_27_030613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actor_attain_goals", force: :cascade do |t|
    t.integer "validity"
    t.bigint "goal_id"
    t.bigint "actor_id"
    t.bigint "actor_goal_id"
    t.bigint "actor_type_id"
    t.integer "attainment"
    t.date "startdate"
    t.date "enddate"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_goal_id"], name: "index_actor_attain_goals_on_actor_goal_id"
    t.index ["actor_id"], name: "index_actor_attain_goals_on_actor_id"
    t.index ["actor_type_id"], name: "index_actor_attain_goals_on_actor_type_id"
    t.index ["goal_id"], name: "index_actor_attain_goals_on_goal_id"
  end

  create_table "actor_goals", force: :cascade do |t|
    t.bigint "actor_id"
    t.integer "validity"
    t.bigint "goal_id"
    t.bigint "actor_type_id"
    t.date "startdate"
    t.date "enddate"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_actor_goals_on_actor_id"
    t.index ["actor_type_id"], name: "index_actor_goals_on_actor_type_id"
    t.index ["goal_id"], name: "index_actor_goals_on_goal_id"
  end

  create_table "actor_relationships", force: :cascade do |t|
    t.bigint "actor_id"
    t.integer "actor2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_actor_relationships_on_actor_id"
  end

  create_table "actor_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actors", force: :cascade do |t|
    t.decimal "ident"
    t.bigint "ident_type_id"
    t.bigint "actor_type_id"
    t.string "surname"
    t.string "secsurname"
    t.string "firstname"
    t.string "secondname"
    t.date "birthdate"
    t.bigint "degree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "healthpromentity_id"
    t.index ["actor_type_id"], name: "index_actors_on_actor_type_id"
    t.index ["degree_id"], name: "index_actors_on_degree_id"
    t.index ["healthpromentity_id"], name: "index_actors_on_healthpromentity_id"
    t.index ["ident_type_id"], name: "index_actors_on_ident_type_id"
  end

  create_table "answers", force: :cascade do |t|
    t.bigint "complaint_id"
    t.bigint "actor_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_answers_on_actor_id"
    t.index ["complaint_id"], name: "index_answers_on_complaint_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.bigint "actor_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_complaints_on_actor_id"
  end

  create_table "degrees", force: :cascade do |t|
    t.bigint "actor_type_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_type_id"], name: "index_degrees_on_actor_type_id"
  end

  create_table "goal_attainments", force: :cascade do |t|
    t.bigint "degree_id"
    t.integer "validity"
    t.bigint "goal_id"
    t.bigint "actor_type_id"
    t.integer "attainment"
    t.date "startdate"
    t.date "enddate"
    t.string "name"
    t.decimal "weight"
    t.decimal "fulfillment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_type_id"], name: "index_goal_attainments_on_actor_type_id"
    t.index ["degree_id"], name: "index_goal_attainments_on_degree_id"
    t.index ["goal_id"], name: "index_goal_attainments_on_goal_id"
  end

  create_table "goals", force: :cascade do |t|
    t.bigint "degree_id"
    t.integer "validity"
    t.bigint "actor_type_id"
    t.date "startdate"
    t.date "enddate"
    t.string "name"
    t.decimal "weight"
    t.decimal "fulfillment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_type_id"], name: "index_goals_on_actor_type_id"
    t.index ["degree_id"], name: "index_goals_on_degree_id"
  end

  create_table "healthpromentities", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ident_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.string "addres"
    t.string "mail"
    t.bigint "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_institutions_on_actor_id"
  end

  create_table "material_goals", force: :cascade do |t|
    t.bigint "goal_id"
    t.bigint "material_type_id"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_id"], name: "index_material_goals_on_goal_id"
    t.index ["material_type_id"], name: "index_material_goals_on_material_type_id"
  end

  create_table "material_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "actor_attain_goals", "actor_goals"
  add_foreign_key "actor_attain_goals", "actor_types"
  add_foreign_key "actor_attain_goals", "actors"
  add_foreign_key "actor_attain_goals", "goals"
  add_foreign_key "actor_goals", "actor_types"
  add_foreign_key "actor_goals", "actors"
  add_foreign_key "actor_goals", "goals"
  add_foreign_key "actor_relationships", "actors"
  add_foreign_key "actors", "actor_types"
  add_foreign_key "actors", "degrees"
  add_foreign_key "actors", "healthpromentities"
  add_foreign_key "actors", "ident_types"
  add_foreign_key "answers", "actors"
  add_foreign_key "answers", "complaints"
  add_foreign_key "complaints", "actors"
  add_foreign_key "degrees", "actor_types"
  add_foreign_key "goal_attainments", "actor_types"
  add_foreign_key "goal_attainments", "degrees"
  add_foreign_key "goal_attainments", "goals"
  add_foreign_key "goals", "actor_types"
  add_foreign_key "goals", "degrees"
  add_foreign_key "institutions", "actors"
  add_foreign_key "material_goals", "goals"
  add_foreign_key "material_goals", "material_types"
end

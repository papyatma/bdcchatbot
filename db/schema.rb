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

ActiveRecord::Schema.define(version: 20180306122727) do

  create_table "activites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "typeOffer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "public"
    t.integer "ageMin"
    t.integer "ageMax"
    t.string "niveau"
    t.integer "sexe"
    t.string "periode"
    t.string "jour"
    t.time "heureDebut"
    t.time "heureFin"
    t.date "dateDebut"
    t.date "dateFin"
    t.string "tarif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "place_id"
    t.bigint "activite_id"
    t.bigint "structure_id"
    t.index ["activite_id"], name: "index_seances_on_activite_id"
    t.index ["place_id"], name: "index_seances_on_place_id"
    t.index ["structure_id"], name: "index_seances_on_structure_id"
  end

  create_table "structures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "address"
    t.integer "zipcode"
    t.integer "phone"
    t.string "email"
    t.string "typeStructure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "direction_id"
    t.index ["direction_id"], name: "index_structures_on_direction_id"
  end

  add_foreign_key "seances", "activites"
  add_foreign_key "seances", "places"
  add_foreign_key "seances", "structures"
  add_foreign_key "structures", "directions"
end

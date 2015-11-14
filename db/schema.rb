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

ActiveRecord::Schema.define(version: 20151028132534) do

  create_table "connections", force: true do |t|
    t.integer  "key"
    t.string   "dsn"
    t.string   "userid"
    t.string   "password"
    t.string   "range"
    t.string   "query"
    t.string   "indeling_code"
    t.string   "dimensie_code"
    t.string   "userid_inserted"
    t.date     "datum_inserted"
    t.string   "userid_updated"
    t.date     "datum_updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dim_formats", force: true do |t|
    t.integer  "dimension_id"
    t.integer  "format_version_id"
    t.string   "indeling_code"
    t.integer  "versie_nummer"
    t.string   "dimensie_code"
    t.string   "userid_inserted"
    t.date     "datum_inserted"
    t.string   "userid_updated"
    t.date     "datum_updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dim_formats", ["dimension_id"], name: "index_dim_formats_on_dimension_id"
  add_index "dim_formats", ["format_version_id"], name: "index_dim_formats_on_format_version_id"

  create_table "dim_items", force: true do |t|
    t.string   "dimensie_code"
    t.integer  "dimension_id"
    t.string   "item_sleutel"
    t.string   "item_naam"
    t.string   "item_omschrijving"
    t.string   "userid_inserted"
    t.date     "datum_inserted"
    t.string   "userid_updated"
    t.date     "datum_updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dim_items", ["dimension_id"], name: "index_dim_items_on_dimension_id"

  create_table "dimensions", force: true do |t|
    t.string   "dimensie_code"
    t.string   "dimensie_naam"
    t.string   "dimensie_omschrijving"
    t.string   "bron_type"
    t.string   "bron_naam"
    t.string   "doeltabel_naam"
    t.string   "wijzig_ind"
    t.string   "dimensie_item_num_ind"
    t.string   "userid_inserted"
    t.date     "datum_inserted"
    t.string   "userid_updated"
    t.date     "datum_updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "format_item_links", force: true do |t|
    t.integer  "format_item_id"
    t.integer  "dim_format_id"
    t.integer  "dim_item_id"
    t.string   "indeling_code"
    t.integer  "versie_nummer"
    t.string   "indeling_item_sleutel"
    t.string   "dimensie_code"
    t.string   "dimensie_item_sleutel_van"
    t.string   "dimensie_item_sleutel_tot"
    t.string   "dimensie_item_sleutel_van_sort"
    t.string   "dimensie_item_sleutel_tot_sort"
    t.integer  "is_range"
    t.string   "userid_inserted"
    t.date     "datum_inserted"
    t.string   "userid_updated"
    t.date     "datum_updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "format_item_links", ["dim_format_id"], name: "index_format_item_links_on_dim_format_id"
  add_index "format_item_links", ["dim_item_id"], name: "index_format_item_links_on_dim_item_id"
  add_index "format_item_links", ["format_item_id"], name: "index_format_item_links_on_format_item_id"

  create_table "format_items", force: true do |t|
    t.string   "indeling_code"
    t.integer  "versie_nummer"
    t.integer  "format_version_id"
    t.string   "item_sleutel"
    t.integer  "nivo_aantal"
    t.string   "nivo1_code"
    t.string   "nivo1_omschrijving"
    t.string   "nivo2_code"
    t.string   "nivo2_omschrijving"
    t.string   "nivo3_code"
    t.string   "nivo3_omschrijving"
    t.string   "nivo4_code"
    t.string   "nivo4_omschrijving"
    t.string   "nivo5_code"
    t.string   "nivo5_omschrijving"
    t.string   "nivo6_code"
    t.string   "nivo6_omschrijving"
    t.string   "userid_inserted"
    t.date     "datum_inserted"
    t.string   "userid_updated"
    t.date     "datum_updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "format_items", ["format_version_id"], name: "index_format_items_on_format_version_id"

  create_table "format_versions", force: true do |t|
    t.string   "indeling_code"
    t.integer  "format_id"
    t.integer  "versie_nummer"
    t.string   "versie_naam"
    t.string   "huidig_ind"
    t.date     "geldig_van_datum"
    t.date     "geldig_tot_datum"
    t.string   "userid_inserted"
    t.date     "datum_inserted"
    t.string   "userid_updated"
    t.date     "datum_updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "format_versions", ["format_id"], name: "index_format_versions_on_format_id"

  create_table "formats", force: true do |t|
    t.string   "indeling_code"
    t.string   "indeling_naam"
    t.string   "indeling_omschrijving"
    t.string   "bron_naam"
    t.string   "userid_inserted"
    t.date     "datum_inserted"
    t.string   "userid_updated"
    t.date     "datum_updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

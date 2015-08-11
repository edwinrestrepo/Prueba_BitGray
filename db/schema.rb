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

ActiveRecord::Schema.define(version: 20150811195722) do

  create_table "clientes", force: :cascade do |t|
    t.integer "documento", limit: 4
    t.string  "nombres",   limit: 80
    t.text    "detalles",  limit: 65535
  end

  create_table "compras", force: :cascade do |t|
    t.integer  "id_cliente",  limit: 4
    t.integer  "id_producto", limit: 4
    t.integer  "id_sede",     limit: 4
    t.integer  "precio",      limit: 4
    t.text     "descripcion", limit: 65535
    t.datetime "fecha"
  end

  add_index "compras", ["id_cliente"], name: "id_cliente", using: :btree
  add_index "compras", ["id_producto"], name: "id_producto", using: :btree
  add_index "compras", ["id_sede"], name: "id_sede", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",   limit: 4,   null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "log", force: :cascade do |t|
    t.datetime "fecha"
    t.text     "descripcion", limit: 65535
  end

  create_table "productos", force: :cascade do |t|
    t.string  "producto",    limit: 40
    t.integer "precio",      limit: 4
    t.text    "descripcion", limit: 65535
  end

  create_table "sedes", force: :cascade do |t|
    t.string "sede",      limit: 40
    t.string "direccion", limit: 40
  end

  add_foreign_key "compras", "clientes", column: "id_cliente", name: "compras_ibfk_1"
  add_foreign_key "compras", "productos", column: "id_producto", name: "compras_ibfk_2"
  add_foreign_key "compras", "sedes", column: "id_sede", name: "compras_ibfk_3"
end

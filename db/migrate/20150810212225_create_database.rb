class CreateDatabase < ActiveRecord::Migration
  def self.up

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

end

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

ActiveRecord::Schema.define(version: 20160923173938) do

  create_table "authors", force: :cascade do |t|
    t.string   "codautor"
    t.string   "codgenmus"
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bill_details", force: :cascade do |t|
    t.string   "nrofactura"
    t.string   "codpedprod"
    t.string   "codcliente"
    t.decimal  "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills", force: :cascade do |t|
    t.string   "nrofactura"
    t.string   "codcliente"
    t.decimal  "preciototal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "codcliente"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "dni"
    t.string   "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livingrooms", force: :cascade do |t|
    t.string   "codsala"
    t.string   "codlocal"
    t.string   "codcliente"
    t.string   "descripcion"
    t.integer  "capacidad"
    t.decimal  "precioconsumo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string   "codlocal"
    t.string   "distrito"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musical_genres", force: :cascade do |t|
    t.string   "codgenmus"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "musical_orders", force: :cascade do |t|
    t.string   "codpedmus"
    t.string   "codcliente"
    t.string   "codmusica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musics", force: :cascade do |t|
    t.string   "codmusica"
    t.string   "codgenero"
    t.string   "codautor"
    t.string   "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_producs", force: :cascade do |t|
    t.string   "codpedprod"
    t.string   "codcliente"
    t.string   "codproducto"
    t.integer  "cantidad"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "order_products", force: :cascade do |t|
    t.string   "codpedprod"
    t.string   "codcliente"
    t.string   "codproducto"
    t.integer  "cantidad"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "product_types", force: :cascade do |t|
    t.string   "codtipoprod"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "codproducto"
    t.string   "codtipoprod"
    t.string   "descripcion"
    t.decimal  "precio"
    t.integer  "stock"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "codreserva"
    t.string   "codcliente"
    t.string   "codlocal"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string   "codmesa"
    t.string   "codlocal"
    t.string   "codcliente"
    t.string   "descripcion"
    t.integer  "capacidad"
    t.decimal  "precioconsumo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end

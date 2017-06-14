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

ActiveRecord::Schema.define(version: 20170518190614) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "calendarios", force: :cascade do |t|
    t.integer  "curso_id",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.string   "conferencia",  limit: 255
    t.integer  "programa_id",  limit: 4
    t.integer  "seminario_id", limit: 4
  end

  add_index "calendarios", ["curso_id"], name: "index_calendarios_on_curso_id", using: :btree
  add_index "calendarios", ["programa_id"], name: "index_calendarios_on_programa_id", using: :btree
  add_index "calendarios", ["seminario_id"], name: "index_calendarios_on_seminario_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string   "titulo",             limit: 255
    t.string   "image",              limit: 255
    t.text     "descripccion",       limit: 65535
    t.decimal  "precio",                           precision: 10
    t.string   "duracion",           limit: 255
    t.datetime "inicio",                           precision: 6
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.integer  "programa_id",        limit: 4
    t.text     "contenido",          limit: 65535
    t.integer  "n_modulo_programa",  limit: 4
  end

  add_index "cursos", ["programa_id"], name: "index_cursos_on_programa_id", using: :btree

  create_table "item_calendarios", force: :cascade do |t|
    t.integer  "calendario_id", limit: 4
    t.integer  "lista_id",      limit: 4
    t.integer  "cantidad",      limit: 4, default: 1
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "pedido_id",     limit: 4
  end

  add_index "item_calendarios", ["calendario_id"], name: "index_item_calendarios_on_calendario_id", using: :btree
  add_index "item_calendarios", ["pedido_id"], name: "index_item_calendarios_on_pedido_id", using: :btree

  create_table "lista", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "email",      limit: 255
    t.text     "direccion",  limit: 65535
    t.string   "ciudad",     limit: 255
    t.string   "pais",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "telefono",   limit: 255
    t.boolean  "shipped"
  end

  create_table "programas", force: :cascade do |t|
    t.string   "titulo",              limit: 255
    t.text     "descripcion",         limit: 65535
    t.string   "duracion",            limit: 255
    t.string   "inicio",              limit: 255
    t.decimal  "precio",                            precision: 10
    t.string   "imagen",              limit: 255
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "imagen_file_name",    limit: 255
    t.string   "imagen_content_type", limit: 255
    t.integer  "imagen_file_size",    limit: 4
    t.datetime "imagen_updated_at"
    t.text     "contenido",           limit: 65535
  end

  create_table "registros", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seminarios", force: :cascade do |t|
    t.string   "titulo",              limit: 255
    t.text     "descripcion",         limit: 65535
    t.string   "duracion",            limit: 255
    t.string   "modalidad",           limit: 255
    t.string   "image",               limit: 255
    t.integer  "calendario_id",       limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "image_file_name",     limit: 255
    t.string   "image_content_type",  limit: 255
    t.integer  "image_file_size",     limit: 4
    t.datetime "image_updated_at"
    t.string   "imagen_file_name",    limit: 255
    t.string   "imagen_content_type", limit: 255
    t.integer  "imagen_file_size",    limit: 4
    t.datetime "imagen_updated_at"
  end

  add_index "seminarios", ["calendario_id"], name: "index_seminarios_on_calendario_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "calendarios", "programas"
  add_foreign_key "calendarios", "seminarios"
  add_foreign_key "item_calendarios", "calendarios"
  add_foreign_key "item_calendarios", "pedidos"
  add_foreign_key "seminarios", "calendarios"
end

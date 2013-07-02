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

ActiveRecord::Schema.define(version: 20130630203420) do

  create_table "enderecos", force: true do |t|
    t.string   "cep"
    t.string   "pais"
    t.string   "estado"
    t.string   "cidade"
    t.string   "endereco"
    t.integer  "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.integer  "pessoa_fisica_id"
    t.integer  "pessoa_juridica_id"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enderecos", ["pessoa_fisica_id"], name: "index_enderecos_on_pessoa_fisica_id", using: :btree
  add_index "enderecos", ["pessoa_juridica_id"], name: "index_enderecos_on_pessoa_juridica_id", using: :btree
  add_index "enderecos", ["profile_id"], name: "index_enderecos_on_profile_id", using: :btree

  create_table "pessoa_fisicas", force: true do |t|
    t.string   "nome"
    t.string   "sobrenome"
    t.date     "dataNasc"
    t.enum     "sexo",         limit: [:Masculino, :Feminino],                     default: :Masculino
    t.string   "telefone"
    t.string   "email"
    t.string   "cpf"
    t.string   "rg"
    t.string   "facebook"
    t.boolean  "recebe_email"
    t.enum     "status",       limit: [:Ativo, :Inativo, :Desativado, :Cancelado], default: :Ativo
    t.integer  "nroCompra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pessoa_juridicas", force: true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "email"
    t.string   "nomeResp"
    t.string   "cargo"
    t.string   "cpf"
    t.string   "telefone"
    t.text     "observacao"
    t.boolean  "recebe_email"
    t.integer  "nroCompra"
    t.enum     "status",       limit: [:Ativo, :Inativo, :Desativado, :Cancelado], default: :Ativo
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.datetime "dataNasc"
    t.enum     "sexo",       limit: [:Masculino, :Feminino], default: :Masculino
    t.string   "tel"
    t.string   "rg"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "servico_cruzeiros", force: true do |t|
    t.datetime "dataInicio"
    t.datetime "dataRetorno"
    t.string   "trajetoria"
    t.string   "localSaida"
    t.string   "nomeNavio"
    t.string   "empresaNavio"
    t.string   "empresaCnpj"
    t.text     "descQuarto"
    t.decimal  "precoQuarto",                                                               precision: 6, scale: 4
    t.text     "descCruzeiro"
    t.decimal  "precoTotal",                                                                precision: 6, scale: 4
    t.integer  "nroQuartos"
    t.boolean  "internacional"
    t.enum     "status",        limit: [:Ativo, :Inativo, :Andamento, :Parado, :Concluido],                         default: :Ativo
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servico_eventos", force: true do |t|
    t.datetime "dataInicio"
    t.datetime "dataRetorno"
    t.string   "destino"
    t.string   "localSaida"
    t.string   "nomeTrans"
    t.string   "veiculo"
    t.string   "cnpjTrans"
    t.decimal  "precoTrans",                                                                precision: 6, scale: 4
    t.text     "descEvento"
    t.string   "nomeEvento"
    t.decimal  "precoConvite",                                                              precision: 6, scale: 4
    t.integer  "nroLugares"
    t.decimal  "precoTotal",                                                                precision: 6, scale: 4
    t.boolean  "internacional"
    t.enum     "status",        limit: [:Ativo, :Inativo, :Andamento, :Parado, :Concluido],                         default: :Ativo
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servico_pacotes", force: true do |t|
    t.datetime "dataInicio"
    t.datetime "dataRetorno"
    t.string   "destino"
    t.string   "localSaida"
    t.string   "nomeTrans"
    t.string   "veiculo"
    t.string   "cnpjTrans"
    t.decimal  "precoTrans",                                                              precision: 6, scale: 4
    t.string   "nomeHotel"
    t.string   "cnpjHotel"
    t.text     "descHotel"
    t.text     "descQuarto"
    t.decimal  "precoHotel",                                                              precision: 6, scale: 4
    t.text     "descPacote"
    t.decimal  "precoPacote",                                                             precision: 6, scale: 4
    t.enum     "status",      limit: [:Ativo, :Inativo, :Andamento, :Parado, :Concluido],                         default: :Ativo
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servico_passeios", force: true do |t|
    t.datetime "dataInicio"
    t.datetime "dataRetorno"
    t.string   "destino"
    t.string   "localSaida"
    t.string   "nomeTrans"
    t.string   "veiculo"
    t.string   "cnpjTrans"
    t.decimal  "precoTrans",                                                                precision: 6, scale: 4
    t.text     "descPasseio"
    t.decimal  "precoTotal",                                                                precision: 6, scale: 4
    t.boolean  "internacional"
    t.enum     "status",        limit: [:Ativo, :Inativo, :Andamento, :Parado, :Concluido],                         default: :Ativo
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                                                                    default: "",     null: false
    t.string   "encrypted_password",   limit: 128,                                         default: "",     null: false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                                            default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.enum     "is_admin",             limit: [:Sim, :Nao],                                default: :Nao
    t.enum     "status",               limit: [:Ativo, :Inativo, :Desativado, :Cancelado], default: :Ativo
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vendas", force: true do |t|
    t.integer  "pessoa_fisica_id"
    t.integer  "pessoa_juridica_id"
    t.integer  "user_id"
    t.integer  "services_id"
    t.integer  "services_type"
    t.boolean  "tipo_cliente"
    t.datetime "data_venda"
    t.integer  "forma_pagamento"
    t.integer  "status"
    t.float    "valor_total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

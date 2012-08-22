#  create_table "produtos", :force => true do |t|
#    t.string   "nome"
#    t.integer  "codigo"
#    t.string   "sabor"
#    t.text     "observacoes"
#    t.decimal  "peso"
#    t.text     "porcao"
#    t.integer  "calorias"
#    t.decimal  "proteinas"
#    t.decimal  "gorduras_totais"
#    t.decimal  "gorduras_saturadas"
#    t.decimal  "gorduras_trans"
#    t.decimal  "colesterol"
#    t.decimal  "fibra"
#    t.decimal  "sodio"
#    t.text     "orientacoes"
#    t.integer  "validade_ambiente"
#    t.integer  "validade_resfriado"
#    t.integer  "validade_congelado"
#    t.text     "conservacao"
#    t.datetime "created_at",         :null => false
#    t.datetime "updated_at",         :null => false
#  end

class Produto < ActiveRecord::Base
  validates_presence_of :codigo, :nome, :peso
  validates_presence_of :porcao, :calorias, :proteinas
  validates_presence_of :gorduras_totais, :gorduras_saturadas, :gorduras_trans
  validates_presence_of :colesterol, :fibra, :sodio
  validates_presence_of :validade_ambiente
  
  has_and_belongs_to_many :ingredientes
end

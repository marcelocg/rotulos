class Ingrediente < ActiveRecord::Base
  validates_presence_of :nome
  has_and_belongs_to_many :produtos
end

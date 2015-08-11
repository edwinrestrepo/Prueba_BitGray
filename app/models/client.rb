class Client < ActiveRecord::Base
  has_many :purchases, foreign_key: 'id_cliente'
  self.table_name = "clientes"
end

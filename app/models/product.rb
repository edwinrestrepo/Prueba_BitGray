class Product < ActiveRecord::Base
  has_many :purchases, foreign_key: 'id_producto'
  self.table_name = "productos"
end
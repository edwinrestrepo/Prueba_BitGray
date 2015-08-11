class Local < ActiveRecord::Base
  has_many :purchases, foreign_key: 'id_sede'
  self.table_name = "sedes"
end
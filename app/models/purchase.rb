class Purchase < ActiveRecord::Base
  validates :id_cliente, presence: true
  self.table_name = "compras"
  belongs_to :product, foreign_key: 'id_producto'
  belongs_to :client, foreign_key: 'id_cliente'
  belongs_to :local, foreign_key: 'id_sede'
  extend FriendlyId
  friendly_id :descripcion


  def self.search(search)
    if search
      friendly.where('id_cliente = ?', Client.where('documento = ?', search).first.id)
    end
  end

end
class Log < ActiveRecord::Base
  self.table_name = "log"

  def self.activity(controller, method)
    @descripcion = "#{method} Action in #{controller}"
    @fecha = Time.now
    create(descripcion: @descripcion, fecha: @fecha)
  end
end
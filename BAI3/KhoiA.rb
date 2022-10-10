# Thí sinh thi khối A thi các môn: Toán, Lý, Hoá.
require './Hocsinh'

class KhoiA < Hocsinh

  attr_accessor :KhoiA
  def initialize(id, ten, diachi, uutien)
    super(id, ten, diachi, uutien)
    self.KhoiA =  "Toan -- Ly -- Hoa" 
  end
  def display()
    super()
    puts "Khoi A: #{self.KhoiA}"
  end
end
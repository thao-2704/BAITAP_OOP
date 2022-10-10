# Thí sinh thi khối B thi các môn: Toán, Hoá, Sinh.
require './Hocsinh'

class KhoiB < Hocsinh


  attr_accessor :KhoiB
 
  def initialize(id, ten, diachi, uutien)
    super(id, ten, diachi, uutien)
    self.KhoiB =  "Toan -- Hoa -- Sinh" 
  end
  def display()
    super()
    puts "Khoi B: #{self.KhoiB}"
  end
end
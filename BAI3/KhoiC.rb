# Thí sinh thi khối A thi các môn: Van, Su, Dia.
require './Hocsinh'

class KhoiC < Hocsinh
  attr_accessor :KhoiC
  def initialize(id, ten, diachi, uutien)
    super(id, ten, diachi, uutien)
    self.KhoiC =  "Van -- Su -- Dia" 
  end
  def display()
    super()
    puts "Khoi C: #{self.KhoiC}"
  end
end
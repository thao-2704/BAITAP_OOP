require './Tailieu'
class Bao < Tailieu
  attr_accessor :ngayphathanh
  
  
  def initData(id, nxb, soban, ngayphathanh)
    super(id, nxb, soban)
    self.ngayphathanh = ngayphathanh
  end
  
  def create()
    super()
    print "Ngay phat hanh : "
    self.ngayphathanh = gets.chop()
  end

  def display()
    print "Bao : "
    super.display()
    puts "\tNgay phat hanh : #{self.ngayphathanh}"
  end
end
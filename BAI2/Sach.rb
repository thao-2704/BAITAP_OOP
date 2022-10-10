require './Tailieu'
class Sach < Tailieu
  attr_accessor :tacgia, :sotrang

  def initialize(id, nxb, soban, tacgia, sotrang)
    super(id, nxb, soban)
    self.tacgia = tacgia
    self.sotrang  = sotrang
  end

  def display()
    print "Sach : "
    super.display()
    puts "\ Tac gia : #{self.tacgia} -- So tragn : #{self.sotrang}"
  end
end
require './Tailieu'
class Tapchi < Tailieu
  attr_accessor :sophathanh, :thangphathanh 
  def initData(id, nxb, soban, sophathanh, thangphathanh)
    super(id, nxb, soban)
    self.sophathanh = sophathanh
    self.thangphathanh = thangphathanh
  end

  def create()
    super()
    print "So phat hanh"
    self.sophathanh = gets.chop()
    print "Thang phat hanh"
    self.thangphathanh = gets.chop()
  end
  def display()
    print "Tap chi : "
    super.display()
    puts "\tSo phat hanh : #{self.sophathanh} -- Thang phat hanh : #{self.thangphathanh}"
  end
end
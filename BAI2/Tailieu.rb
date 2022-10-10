class Tailieu
    attr_accessor :id, :nxb, :soban
    def initialize(id, nxb, soban)
      self.id = id
      self.nxb = nxb
      self.soban = soban
    end
  
    def display()
      puts "Id : #{self.id} -- nxb: #{self.nxb} -- So phat hanh: #{self.sophathanh}"
    end
  end

class Hocsinh
    attr_accessor :id, :ten, :diachi, :uutien
    
    def initialize(id, ten, diachi, uutien)
      self.id = id
      self.ten = ten
      self.diachi = diachi
      self.uutien = uutien
    end
  
    def display()
      puts "id: #{self.id} -- ten: #{self.ten} -- diachi: #{self.diachi} -- uutien -- #{self.uutien}"
    end
  end
class Quanli_tailieu
    attr_accessor :Tailieulist
    Tailieulist = []
    def initialize()
    end
  
    def themTailieu(tailieu)
      Tailieulist << tailieu
    end
  
    def xoaTailieu(code)
      Tailieulist.delete_if { |x| x.id == code }
      display()
    end
  
    def Timkiem(code, type)
      Tailieulist.each do |tailieu| 
        if tailieu.class.name == type && tailieu.id == code
          tailieu.display()
        end
      end
    end
    def display()
      puts "\n================= Danh Sach Tai lieu  ================="
      Tailieulist.each do |tailieu| tailieu.display()
      end
    end
  end
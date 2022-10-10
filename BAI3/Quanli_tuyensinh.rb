class Quanli_tuyensinh
    attr_accessor :Danhsach
    Danhsach = []
    def themThisinh(thisinh)
      Danhsach << thisinh
    end
    
    def timKiem(idthisinh)
      Danhsach.each do |thisinh| 
        if thisinh.id.include?(idthisinh)
          thisinh.display()
        end
      end
    end
    def display()
      Danhsach.each do |thisinh| thisinh.display() end
    end
  end
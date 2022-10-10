require './KhoiA'
require './KhoiB'
require './KhoiC'
require './Quanli_tuyensinh'

puts"=============HIEN THI THONG ITN THI SINH=============="
thisinhA = KhoiA.new('1', 'Thanh Thao', 'Da Nang', 'Khu vuc 3')
thisinhB = KhoiB.new('13', 'Phan Thao', 'Quang Nam', 'Khu vuc 1')
thisinhC = KhoiC.new('3', 'Thao Thao', 'Ha Noi', 'Khu vuc 3')
ql_tuyensinh = Quanli_tuyensinh.new()
ql_tuyensinh.themThisinh(thisinhA)
ql_tuyensinh.themThisinh(thisinhB)
ql_tuyensinh.themThisinh(thisinhC)
ql_tuyensinh.display()
puts"=============TIM KIEM================="
ql_tuyensinh.timKiem('1')

  
  
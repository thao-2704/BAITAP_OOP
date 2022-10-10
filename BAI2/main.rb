require './Quanli_tailieu'
require './Sach'
require './Tapchi'
require './Bao'

def initBasicData(qlManager)
  sach = Sach.new()
  sach.initData('1', 'Ruby', '3', 'Hoc ruby cung toi', '123')

  tapchi = Tapchi.new()
  tapchi.initData('2', 'Tap chi', '27', '14', '10')

  bao = Bao.new()
  bao.initData('3', 'Bao', '11', '3/10/2018')

  qlManager.themTailieu(Sach)
  qlManager.themTailieu(Tapchi)
  qlManager.themTailieu(Bao)
  
end
def themTailieu(qlManager)
  choose = 0
  loop do
    puts "1. Sach!"
    puts "2. Bao!"
    puts "3. Tap chi!"
    puts "4. Tro ve!"
    print "Nhap so can chon: "
    choose = gets.chop()
    case choose
    when "1"
      puts "Them sach moi"
      doc = Sach.new()
      doc.create()
      qlManager.themTailieu(doc)
    when "2"
      puts "Them bao moi"
      doc = Bao.new()
      doc.create()
      qlManager.themTailieu(doc)
    when "3"
      puts "Them tap chi moi"
      doc = Journal.new()
      doc.create()
      qlManager.themTailieu(doc)
    when "4"
      system ("cls")
      break
    end
  end
end
def xoaTailieu(qlManager)
  print "Nhap ma tai lieu can xoa: "
  id = gets.chop()
  qlManager.xoaTailieu(id)
end

 qlManager = Quanli_tailieu.new()
initBasicData(qlManager)

loop do
  puts "1. Them moi (SACH, BAO, TAP CHI) !"
  puts "2. Xoa tai lieu bang ma!"
  puts "3. Hien thi thong tin tai lieu!"
  puts "4. Tim kiem tai lieu theo loai: SACH, BAO, TAP CHI"
  puts "5. Thoat!"
  puts "6. Lam moi!"
  print "Nhap lua chon cua ban: "
  choose = gets.chop()
  case choose
  when "1"
    puts "Them moi!"
    themTailieu(qlManager)
  when "2"
    puts "Remove document with id!"
    xoaTailieu(qlManager)
  when "3"
    qlManager.display()
  when "4"
    puts "Tim kiem theo loai: SACH, BAO, TAP CHI!"
    puts "1. Tim theo Sach"
    puts "2. Tim theo Bao"
    puts "3. Tim theo Tap chi"
    # puts "4. All Type Document"

    puts "Nhap lua chon: "
    typeDoc = gets.chop()
    print "Nhap id cua ban: "
    idSearch = gets.chop()
    case typeDoc
    when "1"
      qlManager.seachDoc(idSearch, 'Sach')
    when "2"
      qlManager.seachDoc(idSearch, 'Bao')
    when "3"
      qlManager.seachDoc(idSearch, 'Tap chi')
    end
  when "5" 
    break
    gets.chop()
  when "6"
    system ("cls")
  else 
    puts "Lua chon cua ban khong ton tai!"
  end
end
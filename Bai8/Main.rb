require_relative "Student"
require_relative "Card"
require_relative "ManagerCard"

managerCard = ManagerCard.new
while true
  puts "\n\n-----Quản lý mượn trả sách-----"
  puts "Enter 1: Thêm mới sách "
  puts "Enter 2: Xóa sách theo mã phiếu mượn"
  puts "Enter 3: Hiển thị thông tin các thẻ mượn"
  puts "Enter 4: Thoát"

  line = gets.to_i
  case line
  when 1
    puts "\nNhập ID:"
    id = gets.chomp
    puts "Nhập tên:"
    name = gets.chomp
    puts "Nhập tuổi:"
    age = gets.to_i
    puts "Nhập trường:"
    school = gets.chomp
    puts "Nhập ngày mượn:"
    borrowDate =  gets.to_i
    puts "Nhập ngày trả:"
    paymentDate =  gets.to_i
    puts "Nhập id phiếu mượn:"
    bookId =  gets.chomp

    card = Card.new(name, age, school, id, borrowDate, paymentDate, bookId)

    managerCard.addCard(card)
  when 2
    puts "\nNhập id phiếu mượn:"
    ids = gets.chomp
    managerCard.deleteCard(ids)
  when 3
    puts "\n-----Danh sách các thẻ mượn-----"
    managerCard.show()
  when 4
    puts "Thoát"
    return
  else
    puts "Không hợp lệ"
  end
end
require_relative "Hotel"
require_relative "Person"
require_relative "Room"
require_relative "RoomA"
require_relative "RoomB"
require_relative "RoomC"

hotel = Hotel.new
while true
  # system("clear") || system("cls")
  puts "\n\n-----Quản lý khách hàng----"
  puts "Enter 1: Thêm mới khách hàng"
  puts "Enter 2: Xóa khách hàng theo số chứng minh nhân dân"
  puts "Enter 3: Tính tiền thuê phòng theo số chứng minh nhân dân"
  puts "Enter 4: Xem thông tin khách hàng"
  puts "Enter 5: Thoát"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Thêm khách hàng-----"
    puts "Nhập tên:"
    name = gets.chomp
    puts "Nhập tuổi:"
    age = gets.to_i
    puts "Nhập số chứng minh nhân dân:"
    passport = gets.chomp

    puts "Chọn a để thuê phòng A"
    puts "Chọn b để thuê phòng B"
    puts "Chọn c để thuê phòng C"
    choice = gets.chomp
    if choice == "a"
      room = RoomA.new
    elsif choice == "b"
      room = RoomB.new
    elsif choice == "c"
      room = RoomC.new
    end

    puts "Nhập số ngày thuê phòng:"
    numberRent = gets.to_i

    person = Person.new(name, age, passport, room, numberRent)
    hotel.addPerson(person)
  when 2
    puts "\n-----Xóa khách hàng-----"
    puts "Nhập số chứng minh nhân dân:"
    passport = gets.chomp
    hotel.deletePerson(passport)
  when 3
    puts "\n-----Tính giá thuê phòng-----"
    puts "Nhập số chứng minh nhân dân:"
    passport = gets.chomp
    price = hotel.calculator(passport)
    puts "Giá: #{price}"
  when 4
    puts "\n-----Danh sách khách hàng-----"
    hotel.show()
  when 5
    puts "Thoát"
    return
  else
    puts "Không hợp lệ"
  end
end
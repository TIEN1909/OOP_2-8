require_relative "ManagerTeacher"
require_relative "Teacher"

managerTeacher = ManagerTeacher.new
while true
  puts "\n\n-----Quản lý giáo viên-----"
  puts "Enter 1: Thêm giáo viên"
  puts "Enter 2: Xóa giáo viên"
  puts "Enter 3: Tính lương"
  puts "Enter 4: Xem thông tin"
  puts "Enter 5: Thoát"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Thêm giáo viên-----"
    puts "Nhập ID:"
    id = gets.chomp
    puts "Nhập tên:"
    name = gets.chomp
    puts "Nhập tuổi:"
    age = gets.to_i
    puts "Nhập quê quán:"
    hometown = gets.chomp
    puts "Nhập lương cứng:"
    salary = gets.to_i
    puts "Nhập lương thưởng:"
    bonus = gets.to_i
    puts "Nhập tiền phạt:"
    penaty = gets.to_i
    # puts "Nhập lương thực lĩnh:"
    # realSalary = gets.to_i

    teacher = Teacher.new(salary, bonus, penaty,  name, age, hometown, id)
    managerTeacher.addTeacher(teacher)
  when 2
    puts "\n-----Xóa giáo viên-----"
    puts "Nhập ID giáo viên cần xóa:"
    ids = gets.chomp
    managerTeacher.deleteById(ids)
    managerTeacher.show()
  when 3
    puts "\n-----Tính lương cho giáo viên-----"
    puts "Nhập ID giáo viên:"
    ids = gets.chomp
    managerTeacher.getSalary(ids)
    # puts "Luong : #{@real}"

  when 4 
    managerTeacher.show()

  when 5
    puts "Thoát"
    return
  else
    puts "Không hợp lệ"
  end
end
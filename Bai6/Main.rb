require_relative "Student"
require_relative "School"

school = School.new
while true
  # add student
  puts "Nhập số học sinh:"
  number = gets.to_i
  for i in 0..number-1
    puts "-----Thêm học sinh #{i+1}-----"
    puts "Nhập tên:"
    name = gets.chomp
    puts "Nhập tuổi:"
    age = gets.to_i
    puts "Nhập quê quán:"
    hometown = gets.chomp
    puts "Nhập lớp:"
    classStudent = gets.to_i

    student = Student.new(name, age, hometown, classStudent)
    school.addStudent(student)
  end
  puts "-----Danh sách học sinh-----"
  school.show()

  # Students 20 years old
  puts "-----Danh sách học sinh 20 tuổi-----"
  school.getStudent20YearsOld()

  # Student 20 years old and in DN
  count = school.countStudent23YearOldInDN()
  puts "Danh sách học sinh 23 tuổi và quê ở DN: #{count}"
end
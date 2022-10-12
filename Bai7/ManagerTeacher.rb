require_relative "Teacher"

class ManagerTeacher
  def initialize
    @teachers = []
  end

  def show()
    @teachers.each do |teacher|
      teacher.showInfor()
    end
  end

  def addTeacher(teacher)
    @teachers << teacher
  end

  def deleteById(id)
    @teachers.each do |teacher|
      if teacher.id == id
        @teachers.delete(teacher)
        return true
      end
    end
    return false
  end

  def getSalary(id)
    @teachers.each do |teacher|
      if teacher.id == id
        realSalary = teacher.salary + teacher.bonus + teacher.penaty
        teacher.realSalary = realSalary
        puts "Luong : #{realSalary}"
      end

    end
    return 0
  end
end
require_relative "CandidateA"
require_relative "CandidateB"
require_relative "CandidateC"
require_relative "ManagerCandidate"

candidates = []
managerCandidate = ManagerCandidate.new

while(true)
    puts "----------------------------"
    puts "Quản lý thí sinh dự thi"
    puts "1: Thêm mới thí sinh"
    puts "2: Xem thông tin của thí sinh"
    puts "3: Tìm thí sinh theo id"
    puts "4: Thoát"
    print("Chọn chức năng: ")
    n = gets.to_i
    case n
    when 1 
        puts("Chọn khối thi")
        puts("1. A")
        puts("2. B")
        puts("3. C")
        type = gets.to_i

        case type
        when 1
            print "Nhập số báo danh :"
            id = gets
            print "Nhập tên thí sinh :"
            name = gets
            print "Nhập địa chỉ :"
            address = gets
            print "Nhập mức ưu tiên :"
            priority = gets

            candidateA = CandidateA.new(id, name, address, priority)
            managerCandidate.add(candidateA, candidates)
        when 2
            print "Nhập số báo danh :"
            id = gets
            print "Nhập tên thí sinh :"
            name = gets
            print "Nhập địa chỉ :"
            address = gets
            print "Nhập mức ưu tiên :"
            priority = gets

            candidateB = CandidateB.new(id, name, address, priority)
            managerCandidate.add(candidateB, candidates)
        when 3
            print "Nhập số báo danh :"
            id = gets
            print "Nhập tên thí sinh :"
            name = gets
            print "Nhập địa chỉ :"
            address = gets
            print "Nhập mức ưu tiên :"
            priority = gets

            candidateC = CandidateC.new(id, name, address, priority)
            managerCandidate.add(candidateC, candidates)
        end
    when 2
        managerCandidate.showInfor(candidates)
    when 3
        print "Nhập số báo danh cần tìm :"
        ids = gets
        puts "Thí sinh cần tìm"
        managerCandidate.search(ids, candidates)
    when 4
        return
    end
end

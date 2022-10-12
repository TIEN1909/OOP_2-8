require_relative "Person"
require_relative "Family"
require_relative "Town"

town = Town.new

while true
    puts "Nhập số hộ dân:"
    n = gets.chomp.to_i
    for i in 0..n-1
        puts "\n----------Hộ dân #{i+1}:----------"
        # Input foreach family
        puts "Nhập địa chỉ:"
        address = gets.chomp

        # Enter person number in family
        puts "Nhập số người:"
        number = gets.to_i

        for j in 0..number-1
            # Input person for famil
            puts "\nThành viên #{j+1}:"
            puts "Nhập tên:"
            name = gets.chomp
            puts "Tuổi:"
            age = gets.to_i
            puts "Nhập công việc:"
            job = gets.chomp
            puts "Nhập hộ chiếu:"
            passport = gets.chomp

            family = Family.new(name, age, job, passport, address)
            town.addFamily(family)
        end
    end

    # After done input
    puts "\n---------Hộ dân---------"
    town.showFamilyMembers()
end
1
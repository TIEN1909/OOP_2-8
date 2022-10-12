require_relative "Candidate"

class CandidateA < Candidate
    MON_TOAN = 'Toán'
    MON_LY = 'Lý'
    MON_HOA = 'Hóa'

    def initialize(id, name, address, priority)
        super(id, name, address, priority)
    end

    def showInfor
        puts "ID : #{@id} - Name : #{@name} - Address : #{@address} - Priority : #{@priority} - Subject : #{MON_TOAN} - #{MON_LY} - #{MON_HOA}"
    end
end
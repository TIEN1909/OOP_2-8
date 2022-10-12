require_relative "Candidate"

class CandidateB < Candidate
    MON_TOAN = 'Toán'
    MON_HOA = 'Hóa'
    MON_SINH = 'Sinh'

    def initialize(id, name, address, priority)
        super(id, name, address, priority)
    end

    def showInfor
        puts "ID : #{@id} - Name : #{@name} - Address : #{@address} - Priority : #{@priority} - Subject : #{MON_TOAN} - #{MON_HOA} - #{MON_SINH}"
    end
end
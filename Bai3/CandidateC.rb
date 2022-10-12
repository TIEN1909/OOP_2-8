require_relative "Candidate"

class CandidateC < Candidate
    MON_VAN = "Van";
    MON_SU = "Su";
    MON_DIA = "Dia";

    def initialize(id, name, address, priority )
        super(id, name, address, priority)
    end

    def showInfor
        puts "ID : #{@id} - Name : #{@name} - Address : #{@address} - Priority : #{@priority} - Subject : #{MON_VAN} - #{MON_SU} - #{MON_DIA}"
    end
end
require_relative "Document"

class Bao < Document
    attr_accessor :dayIssue

    def initialize(id,nxb, number, dayIssue)
        super(id,nxb, number)
        @dayIssue = dayIssue
    end

    def showInfor()
        print("Ma tai lieu : #{@id} - Ten nha xuat ban: #{@nxb} - So ban phat hanh: #{@number} - Ngay phat hanh: #{@dayIssue}")
    end
end
require_relative "Document"

class Journal < Document
    attr_accessor :issueNumber, :monthIssue

    def initialize(id,nxb, number, issueNumber, monthIssue)
        super(id,nxb, number)
        @issueNumber = issueNumber
        @monthIssue = monthIssue
    end

    def showInfor()
        print("Ma tai lieu : #{@id} - Ten nha xuat ban: #{@nxb} - So ban phat hanh: #{@number} - So phat hanh: #{@issueNumber} - Thang phat hanh: #{@monthIssue}")
    end
end
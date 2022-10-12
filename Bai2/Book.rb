require_relative "Document"

class Book < Document
    attr_accessor :author, :numberPage

    def initialize(id,nxb, number, author, numberPage)
        super(id,nxb, number)
        @author = author
        @numberPage = numberPage
    end

    def showInfor()
        print("Ma tai lieu : #{@id} - Ten nha xuat ban: #{@nxb} - So ban phat hanh: #{@number} - Ten tac gia: #{@author} - So trang: #{@numberPage}")
    end
end
require_relative "Book"
require_relative "Journal"
require_relative "Newspaper"

class ManagerDocument
    def initialize 

    end

    def addDocument(documents, document)
        documents.push(document)
    end

    def deleteDocument(id, documents) 
        for document in documents do
            if(document.id == id) 
                documents.delete(document)
                puts("Remove successfully")
            end
        end
    end

    def showInfor(documents)
        for document in documents do
            document.showInfor
        end
    end

    def searchByBook(documents) 
        for document in documents do
            if document.instance_of? Book
                document.showInfor
            end
        end
    end

    def searchByJournal(documents) 
        for document in documents do
            if document.instance_of? Journal
                document.showInfor
            end
        end
    end

    def searchByNewspaper(documents) 
        for document in documents do
            if document.instance_of? Newspaper
                document.showInfor
            end
        end
    end
end
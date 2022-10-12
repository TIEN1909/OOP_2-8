class Candidate

    attr_accessor :id, :name, :address, :priority

    def initialize(id, name, address, priority)
        @id = id
        @name = name
        @address = address
        @priority = priority
    end
end
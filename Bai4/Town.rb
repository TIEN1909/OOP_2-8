require_relative "Family"
require_relative "Person"

class Town < Family
    # attr_accessor :families
    def initialize()
        @families = []
    end

    def addFamily(family)
        @families << family
    end

    def showFamilyMembers()
        @families.each do |member|
            member.show()
        end
    end
end
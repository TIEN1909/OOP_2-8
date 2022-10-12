require_relative "Person"

class Family < Person
    attr_accessor :name, :age, :job, :passport ,:address

    def initialize(name, age, job, passport, address)
        super(name, age, job, passport)
        @address = address
    end

    def show
        puts "Name: #{@name}, age: #{@age}, job: #{@job}, passport: #{@passport}, address: #{@address}"
    end
end
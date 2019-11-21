# code here!
require 'pry'
class School

    attr_accessor :roster

    def initialize(name) 
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if  @roster[grade]
            @roster[grade] << name
        else
        @roster[grade] = []
        @roster[grade] << name
        end
        #binding.pry
          
    end
    def grade(grade)
        @roster[grade]
    end

    def sort
        new_hash = {}
        @roster.each do |key, values|
          values = values.sort
          temp_hash = {key => values}
          new_hash.merge!(temp_hash)
        end
        new_hash
        #binding.pry

    end

end
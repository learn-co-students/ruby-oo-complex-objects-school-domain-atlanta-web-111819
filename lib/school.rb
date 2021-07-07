# code here!
require 'pry'
class School 
    #this should be reffered to as a 
    #model in the domain model context of code.
    attr_accessor :roster 

    def initialize(roster)
        @roster = {}
        @sort = {}
    end 

    def add_student(name, grade)
        # students = @roster[grade]= []
       if @roster.has_key?(grade)
            @roster[grade] << name 
       else 
            @roster[grade]= []
            @roster[grade] << name
       end 
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        #@roster.select {|k,v| v.sort}
        # ^^^ needs the .sort! bc it returns self sorted
        # .sort returns new array which doesnt modify
        #the roster by sorting them... it would return a new
        #array of values from roster. 
        @roster.select {|k,v| v.sort!}
    end 

end
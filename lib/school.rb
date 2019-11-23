# code here!

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
        @roster.select {|k,v| v.sort!}
    end 

end
class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.keys.sort
        @roster.values.each do |students|
            students.sort!
        end
        @roster
    end
end
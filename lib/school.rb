class School

    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(level)
        return @roster[level]
    end

    def sort
        temp = {}
        @roster.each do |key, value|
            temp[key] = value.sort
        end

        temp
    end

end
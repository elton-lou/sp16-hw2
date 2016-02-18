class Person

    def initialize(name, age)
        @nickname = name[0..3] #gets the first four letters of name and sets it to nickname
        @current_year = 2016
        @age = Integer(age)
        @name = name
    end
    #returns string of name and age
    def introduce
        "#{@name} #{@age}"
    end

    #computers the birth_date of this person given the age
    def birth_year
        @current_year - @age
    end

    #returns the nickname of this person
    def nickname
        @nickname
    end
end


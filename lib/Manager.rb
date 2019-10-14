class Manager

attr_accessor :name, :department, :age

   @@all = []
    def initialize(name,department,age)
        @name = name 
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def self.all
        @@all
    end

    def hire_employee
        employees <<  Employee.new("New hire", 35000, self)
    end

    def self.all_departments
        self.all.map { |single_instance| single_instance.department }
    end

    def self.average_age
        average = 0
        @@all.each do |manager|
           average+= manager.age
        end
        average.to_f / @@all.length.to_f
    end
    
end

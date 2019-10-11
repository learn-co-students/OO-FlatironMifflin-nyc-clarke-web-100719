class Manager
    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select do |employee| 
            employee.manager_name == self
        end
    end

    def self.array
        @@all
    end

    def hire_employee(name, salary)
        employees << Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all.each do |manager|
            manager.department
        end
    end

    def self.average_age
        age = 0.0
        @@all.each do |manager|
            age += manager.age 
        end
        return age/@@all.length
    end

end

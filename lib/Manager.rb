class Manager
    attr_reader :name, :department, :age

    @@all = []    
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select { |employee| employee.manager == self}
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        employees << Employee.new(name, salary, self)  
    end

    def self.all_departments
        self.all.map { |x| x.department }
    end

    def self.sum_manager_ages
        total = 0
        self.all.each { |manager| total += manager.age}
        total
    end

    def self.average_age
        avg = (self.sum_manager_ages / @@all.length.to_f)
    end
end

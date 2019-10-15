class Manager

    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employees.all.select
    end
    
    def hire_employee(employee_name, salary, manager)
        Employee.new(employee_name, salary, self)
    end

    def self.all_departments
        all.select do |manager|
            manager.department == self
        end
    end
    
    def self.average_age
        sum = all.reduce(0) { |sum, manager| sum + manager.age }
        sum / all.length.to_f
    end

end

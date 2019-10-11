class Employee
    @@all = []

    attr_accessor :name, :salary, :manager_name
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
        @@all.select do |employee|
            employee.salary > salary
        end
    end

    def self.find_by_department(department)
        @@all.find do |employee|
           employee.manager_name.department
        end
    end

    def tax_bracket
        @@all.select do |employee| 
           if (employee.salary - self.salary).abs < 1000
           employee
           end
        end
    end

end

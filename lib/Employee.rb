class Employee

    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary 
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name 
        manager.name
    end

    def self.paid_over(num)
        all.select { |employee| employee.salary > num}
    end

    def self.find_by_department(department)
        all.find { |employee| employee.manager.department == department }
    end

    def tax_bracket
        @@all.select do |employee| 
            if employee.salary <= (self.salary + 1000) && employee.salary >= (self.salary - 1000)
                employee
            end
        end
    end

end

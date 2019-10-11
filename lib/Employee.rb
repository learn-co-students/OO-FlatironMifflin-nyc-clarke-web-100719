class Employee
    attr_reader :name, :salary, :manager, :department
    @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def manager_name
        manager.name
    end

    def self.all
        @@all
    end

    def self.paid_over(number)
        self.all.map { |employee| employee.salary if employee.salary > number}
    end

    def self.find_by_department(department)
        @@all.find { |employee| employee.manager.department == department}
    end

    def tax_bracket
        #e.g. employee salary is 1200 and self.salary is 1000
        @@all.select do |employee|
            (employee.salary - self.salary).abs < 1000
        end   
    end
end

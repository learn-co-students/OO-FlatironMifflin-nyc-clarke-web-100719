class Employee
    attr_accessor :name, :salary, :manager_name, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @department = manager.department
        self.class.all << self
    end

    def manager_name
        manager.name
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
        self.all.select { |employee| employee.salary > salary }
    end

    def self.find_by_department(department)
        self.all.find { |employee| employee.manager.department == department }
    end

    def tax_bracket
        self.class.all.select { |employee| employee != self && employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000 }
    end

end

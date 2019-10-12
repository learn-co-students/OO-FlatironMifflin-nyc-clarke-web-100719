class Employee

    attr_accessor :name, :salary, :manager, :department
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, manager, salary) #manager is assumed to be an instance of the Manager class and not a simple string
        @name = name
        @manager = manager
        @department = manager.department # directing as manager can only have one department and
        @salary = salary

        self.class.all << self
    end

    def manager_name
        manager.name
    end

    def self.paid_over(salary)
        all.select{|employee| employee.salary > salary}
    end

    def self.find_by_department(department)
        all.find{|employee| employee.department == department}
    end

    def tax_bracket
        max = self.salary + 1000
        min = self.salary - 1000
        self.class.all.select{|employee| employee.salary <= max && employee.salary >= min}.reject{|employee| employee == self}
    end

end

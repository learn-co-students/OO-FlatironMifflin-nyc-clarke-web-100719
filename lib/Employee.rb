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
        answer = ""
        @@all.each do |element|
            if element == self
                answer  = element.manager.name
            end
        end
        answer
    end
 
    def self.paid_over(arg)
    @@all.select {|employee| employee.salary > arg}
    end

    def self.find_by_department(department_arg)
        @@all.find do |employee|
            if employee.manager.department == department_arg
                employee
            end
        end
    end
    def tax_bracket
    @@all.select do |employee|
        (employee.salary - self.salary).abs < 1000
    end 
 end 

end

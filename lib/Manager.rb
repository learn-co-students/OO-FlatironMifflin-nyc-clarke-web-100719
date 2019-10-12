class Manager

    attr_accessor :name, :department, :age
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        self.class.all << self
    end

    def employees
        Employee.all.select{|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, self, salary)
    end

    def self.all_departments
        all.map{|manager| manager.department}
    end

    def self.average_age
        temp = all.map{|manager| manager.age}
        temp.sum / temp.size.to_f
    end

end

require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("Mike", 30, "Marketing")
manager2 = Manager.new("Jay", 21, "Payroll")

employee1 = Employee.new("Alex", manager1, 2000)
employee2 = Employee.new("Peter", manager1, 1500)
employee3 = Employee.new("Willy", manager2, 4000)

binding.pry
puts "done"

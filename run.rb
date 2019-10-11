require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new("name1", "department1", 30)
manager2 = Manager.new("name2", "department2", 15)

employee1 = Employee.new("jack", 1200, manager1)
employee2 = Employee.new("sam", 2000, manager1)
employee3 = Employee.new("stella", 4000, manager1)
employee4 = Employee.new("jason", 100, manager2)

binding.pry
puts "done"

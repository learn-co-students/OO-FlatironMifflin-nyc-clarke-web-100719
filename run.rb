require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

##Managers

manager1 = Manager.new("Yanick", "Food & Bevrage", 25)
manager2 = Manager.new("Marks", "Reservation", 25)
manager3 = Manager.new("Steven", "Food & Bevrage", 41)
manager4 = Manager.new("briane", "Food & Bevrage", 34)
manager5 = Manager.new("kale", "Sales", 49)
manager6 = Manager.new("Denamarque", "Front Desk", 32)
manager7 = Manager.new("Yanick", "Guest services" , 25)


##Employee
employee1 = Employee.new("Soufi", 50000, manager1)
employee2 = Employee.new("adrien", 50000, manager1)
employee3 = Employee.new("club server", 80000, manager3)
employee4 = Employee.new("Anna", 60000, manager6)
employee5 = Employee.new("Aldo", 55000, manager4)





binding.pry
puts "done"

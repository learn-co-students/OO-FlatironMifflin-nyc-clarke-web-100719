require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("nick", "AM", 33)  #name, department, age
m2 = Manager.new("pat", "accounting", 30)

e1 = Employee.new("rye", 50000, m2) #name, salary, manager
e2 = Employee.new("h", 49000, m2)
e3 = Employee.new("mom", 100000, m1)
e4 = Employee.new("carter", 50500, m2)


binding.pry

puts "done"

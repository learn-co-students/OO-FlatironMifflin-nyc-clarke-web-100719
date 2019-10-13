require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
jimmy = Manager.new("Jimmy", "Finance", 25)
jeremy = Manager.new("Jeremy", "Sales", 40)
johnny = jimmy.hire_employee("Johnny", 50000)
jenna = jimmy.hire_employee("Jenna", 51001)
james = jimmy.hire_employee("James", 48999)
jorbert = jimmy.hire_employee("Jorbert", 50001)

binding.pry
puts "done"

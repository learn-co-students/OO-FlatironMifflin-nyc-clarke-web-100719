require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

manager1 = Manager.new("name1","dept1",30)
manager2 = Manager.new("name2","dept2",50)

employee1 = Employee.new("name_emp1", 1000, manager1)
employee2 = Employee.new("name_emp2", 1500, manager1)
employee3 = Employee.new("name_emp3", 20000, manager2)
employee4 = Employee.new("name_emp4", 25000, manager2)



#p manager1.name
#p employee1.
#p manager1.employees
#p manager1.hire_employee("name_emp5" , 75)
#p Manager.all_departments
#p Manager.average_age
#p Employee.paid_over(18)
#p Employee.find_by_department("dept1")
p employee3.tax_bracket


require_relative "employee.rb"

class Manager < Employee
    attr_accessor :employees
    
    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        sum = 0
        @employees.each{|employee| sum += employee.salary}
        
        bonus = sum * multiplier
    end

    def add_employee
        emp = [self] + employees

        boss.employees += emp
    end
end

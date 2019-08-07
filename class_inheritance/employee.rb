require_relative "manager.rb"

class Employee
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end
    
    def bonus(multiplier)
        bonus = salary * multiplier
    end

    def add_employee
      boss.employees << self
    end
    protected

    attr_reader :name, :title, :salary, :boss
end

if $PROGRAM_NAME==__FILE__ 
  ned = Manager.new("Ned", "Founder", 1000000, nil)
  darren = Manager.new("Darren", "TA Manager", 78000, ned)
  shawna = Employee.new("Shawna", "TA", 12000, darren)
  david = Employee.new("David", "TA", 10000, darren)

  shawna.add_employee
  david.add_employee
  darren.add_employee
  # p darren.employees

  p ned.bonus(5) # => 500_000
  p darren.bonus(4) # => 88_000
  p david.bonus(3) # => 30_000
end
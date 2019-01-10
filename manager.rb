class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active, :salary

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending report..."
    # code to send report
    puts "Email sent."
  end

  def give_all_raises #need to see how many employees you have. ADD EMPLOYEES. 
    #input the list of employee objects for this manager aka @employees.
    #effect or output: increase salary by 5%.

    #go through employees 1 at a time.
    #give individual employee a raise.

    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    #input the list of employees aka @employees.
    #what behaviours do i need access to? change active status on an employee object Employee#active=
    #effect or output: change all employees that this manager monitors to an active status of false.

    #access an employee, 1 at a time.
    #change active status to false


    @employees.length.times do |index|
      @employees[index].active = false
    end
  end
end


employee_1 = Employee.new(
                          first_name: "Nick", 
                          last_name: "Cage", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Julia", 
                          last_name: "Andrews", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Grace",
                      last_name: "Hopper",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )


p employee_1.active
p employee_2.active
manager.fire_all_employees
p employee_1.active
p employee_2.active
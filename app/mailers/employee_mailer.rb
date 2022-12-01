# frozen_string_literal: true

# The EmployeeMailer class inherits from the ApplicationMailer class, and has a method called
# employee_welcome_email that takes an employee object as an argument
class EmployeeMailer < ApplicationMailer
  def edit_employee_email(employee)
    @employee = employee
    mail(to: @employee.email, subject: 'Profile updated')
  end
end

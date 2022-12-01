# frozen_string_literal: true

# The show action of the ProfileController of the Employees namespace will find an employee by id and
# assign it to the @employee instance variable.
module Employees
  # The ProfileController class inherits from the ApplicationController class, and has a show method
  # that sets the @employee instance variable to the current_employee method.
  class ProfileController < ApplicationController
    def show
      @employee = current_employee
    end
  end
end

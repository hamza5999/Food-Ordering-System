# frozen_string_literal: true

# Before any action is performed, authenticate the employee.
class ApplicationController < ActionController::Base
  before_action :authenticate_employee!
end

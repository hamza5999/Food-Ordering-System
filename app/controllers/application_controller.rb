# frozen_string_literal: true

# Before any action is performed, authenticate the employee.
class ApplicationController < ActionController::Base
  before_action :authenticate_employee!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name phone profile_pic])
  end
end

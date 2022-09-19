class Employees::InvitationsController < Devise::InvitationsController
  before_action :configure_permitted_parameters

  protected

  # Permit the new params here.
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name, :phone])
  end
end

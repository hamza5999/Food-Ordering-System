# frozen_string_literal: true

module Employees
  # We're overriding the default Devise::InvitationsController and adding a before_action to permit
  # the new params
  class InvitationsController < Devise::InvitationsController
    before_action :configure_permitted_parameters

    protected

    # Permit the new params here.
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:accept_invitation, keys: %i[first_name last_name phone])
    end
  end
end

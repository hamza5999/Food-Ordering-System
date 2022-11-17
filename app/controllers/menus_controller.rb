# frozen_string_literal: true

# The MenusController class inherits from the ApplicationController class, and defines an index action
# that sets the @menus instance variable to the result of calling Menu.all.
class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end
end

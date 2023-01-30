# frozen_string_literal: true

# Creating a module called MenusHelper.
module MenusHelper
  def get_time_only(time)
    # Formatting the time to a string.
    time.strftime('%I:%M %p')
  end
end

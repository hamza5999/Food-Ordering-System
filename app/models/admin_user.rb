# frozen_string_literal: true

# AdminUser is a class that inherits from ApplicationRecord and uses the Devise gem to authenticate
# users.
class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end

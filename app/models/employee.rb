# frozen_string_literal: true

# An employee belongs to a restaurant, has many orders, has many subordinates, and belongs to a
# manager
class Employee < ApplicationRecord
  enum designation: { staff: 0, manager: 1 }

  has_many :orders
  has_many :subordinates, class_name: 'Employee',
                          foreign_key: 'manager_id'

  belongs_to :manager, class_name: 'Employee', optional: true
  belongs_to :restaurant, optional: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def employee_fullname
    "#{first_name} #{last_name}"
  end
end

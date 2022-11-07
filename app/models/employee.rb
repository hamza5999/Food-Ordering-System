# frozen_string_literal: true

# An employee belongs to a restaurant, has many orders, has many subordinates, and belongs to a
# manager
class Employee < ApplicationRecord
  enum designation: { staff: 0, manager: 1 }

  has_one_attached :profile_pic

  has_many :orders
  has_many :subordinates, class_name: 'Employee',
                          foreign_key: 'manager_id'

  belongs_to :manager, class_name: 'Employee', optional: true
  belongs_to :restaurant, optional: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :phone, presence: true
  validates :phone, numericality:
                                  {
                                    only_integer: true,
                                    message: 'can only contain numbers'
                                  },
                    length:
                                  {
                                    minimum: 11,
                                    maximum: 16,
                                    message: 'containing invalid length'
                                  }

  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*\z/ }

  def employee_fullname
    "#{first_name} #{last_name}"
  end
end

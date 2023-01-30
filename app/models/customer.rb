# frozen_string_literal: true

# A customer has many orders, addresses, ratings, and vouchers
class Customer < ApplicationRecord
  has_many :orders
  has_many :addresses
  has_many :ratings

  has_many :customer_vouchers
  has_many :vouchers, through: :customer_vouchers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
